/*
 * 
 */
#include <errno.h>
#include <linux/sched.h>
#include <linux/kernel.h>
#include <asm/segment.h>
#include <asm/system.h>

//写页面验证。若页不可写，则复制页面
extern void write_verify(unsigned long address);

long last_pid = 0; //最新进程号。

//进程空间区域写前验证
void verify_area(void *addr,int size)
{
	unsigned long start;
	//start边界对齐
	start = (unsigned long) addr;
	size += start & 0xfff;
	start &= 0xfffff000; //start为当前进程的空间中的逻辑地址
	//start加上进程数据段在线性地址空间中的起始地址
	start += get_base(current->ldt[2]);
	while (size > 0) {
		size -= 4096;
		write_verify(start);
		start += 4096;
	}
}

//复制内存页表
int copy_mem(int nr, struct task_struct * p)
{
	unsigned long old_data_base, new_data_base, data_limit;
	unsigned long old_code_base, new_code_base, code_limit;
	
    code_limit = get_limit(0x0f);
	data_limit = get_limit(0x17);
	old_code_base = get_base(current->ldt[1]);
	old_data_base = get_base(current->ldt[2]);
	if (old_data_base != old_code_base)
		panic("We don't support separate I&D");
	if (data_limit < code_limit)
		panic("Bad data_limit");

	new_data_base = new_code_base = nr * 0x4000000; //64MB
	p->start_code = new_code_base;
	set_base(p->ldt[1],new_code_base);
	set_base(p->ldt[2],new_data_base);
	if (copy_page_tables(old_data_base, new_data_base, data_limit)) {
		printk("free_page_tables: from copy_mem\n");
		free_page_tables(new_data_base, data_limit);
		return -ENOMEM;
	}
	return 0;
}

//复制进程
int copy_process(int nr,long ebp,long edi,long esi,long gs,long none,
		long ebx,long ecx,long edx,
		long fs,long es,long ds,
		long eip,long cs,long eflags,long esp,long ss)
{
	struct task_struct * p;
	int i;
	struct file * f;
	//为新任务数据结构分配内存。将新任务结构指针放入任务数组nr
	p = (struct task_struct *) get_free_page();
	if (!p)
		return -EAGAIN;
	task[nr] = p;
	*p = *current;
	//将复制来的进程结构进行修改。首先置为不可中断等待，以防止内核调度其执行
	p->state = TASK_UNINTERRUPTIBLE;
	p->pid = last_pid;
	p->father = current->pid;
	p->counter = p->priority;
	p->signal = 0;
	p->alarm = 0;
	p->leader = 0; //进程领导权？
	p->utime = p->stime = 0; //用户态时间和内核态运行时间
	p->cutime = p->cstime = 0; //子进程用户态时间和内核态运行时间
	p->start_time = jiffies;
	//修改任务TSS
	p->tss.back_link = 0;
	p->tss.esp0 = PAGE_SIZE + (long) p;//任务内核态指针
	p->tss.ss0 = 0x10; //内核态栈的段选择符
	p->tss.eip = eip;
	p->tss.eflags = eflags;
	p->tss.eax = 0;
	p->tss.ecx = ecx;
	p->tss.edx = edx;
	p->tss.ebx = ebx;
	p->tss.esp = esp;
	p->tss.ebp = ebp;
	p->tss.esi = esi;
	p->tss.edi = edi;
	p->tss.es = es & 0xffff;
	p->tss.cs = cs & 0xffff;
	p->tss.ss = ss & 0xffff;
	p->tss.ds = ds & 0xffff;
	p->tss.fs = fs & 0xffff;
	p->tss.gs = gs & 0xffff;
	p->tss.ldt = _LDT(nr);
	p->tss.trace_bitmap = 0x80000000;
	if (last_task_used_math == current)
		__asm__("clts ; fnsave %0"::"m" (p->tss.i387));
	if (copy_mem(nr, p)) {
		task[nr] = NULL;
		free_page((long) p);
		return -EAGAIN;
	}
	//如果父进程有文件打开，则将对应文件打开次数加1
	for (i = 0; i < NR_OPEN; i++)
		if ((f = p->filp[i]))
			f->f_count++;
	if (current->pwd)
		current->pwd->i_count++;
	if (current->root)
		current->root->i_count++;
	if (current->executable)
		current->executable->i_count++;
	set_tss_desc(gdt+(nr<<1)+FIRST_TSS_ENTRY,&(p->tss));
	set_ldt_desc(gdt+(nr<<1)+FIRST_LDT_ENTRY,&(p->ldt));
	p->state = TASK_RUNNING;
	return last_pid;
}


//为新进程取得不重复的进程号last_pid
int find_empty_process(void)
{
	int i;
	repeat:
		if ((++last_pid) < 0) last_pid = 1;
		for (i = 0; i < NR_TASKS; i++)
			if (task[i] && task[i]->pid == last_pid) goto repeat;
	for (i = 1; i < NR_TASKS; i++)
		if (!task[i])
			return i;
	return -EAGAIN;
}



