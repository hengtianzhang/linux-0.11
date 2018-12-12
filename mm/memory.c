#include <signal.h>
#include <asm/system.h>
#include <linux/sched.h>
#include <linux/head.h>
#include <linux/kernel.h>

volatile void do_exit(long code);

/*print mem full error*/
static inline volatile void oom(void)
{
	printk("out of memory\n\r");
	do_exit(SIGSEGV); //资源暂时不可用
}

/*刷新页变换高速缓冲宏函数*/
/* CPU将最近使用页表数据存放在高速缓存中。在修改过页表信息后，需要刷新该缓冲区
 * 通过重新加载页目录基地址cr3方法来进行刷新
 */
#define invalidate() \
__asm__("movl %%eax,%%cr3"::"a" (0))

#define LOW_MEM 0x100000 //内存低端 1MB
#define PAGING_MEMORY (15*1024*1024) //主内存最多15MB
#define PAGING_PAGES (PAGING_MEMORY>>12) //分页后的物理内存页面数(3840)
#define MAP_NR(addr) (((addr)-LOW_MEM)>>12) //指定内存地址映射为页号
#define USED 100 //页面占用标志

/*用于判断给定线性地址是否位于当前进程的代码段中*/
#define CODE_SPACE(addr) ((((addr)+4095)&~4095) < \
current->start_code + current->end_code)

static long HIGH_MEMORY = 0; //存放实际物理内存最高地址

/*从from处复制1页内存到to处 4KB*/
#define copy_page(from,to) \
__asm__("cld ; rep ; movsl"::"S" (from), "D" (to), "c" (1024):)

/*物理内存映射字节图。1字节代表1页*/
static unsigned char mem_map [ PAGING_PAGES ] = {0,};



/*
 * 获取首个空闲页面。并标记为已使用。如果没有
 * 空闲页面，就返回0
 * 输入：%1(ax=0) %2(LOW_MEM)内存字节位图管理的起始位置 %3(cx=PAGING_PAGES)
 * %4(edi=mem_map+PAGING_PAGES-1)
 * 输出：%0(ax = 物理页面起始地址) 
 *
 */
unsigned long get_free_page(void)
{
register unsigned long __res asm("ax");

__asm__("cld ; repne ; scasb\n\t" //置方向位。al(0)与每个页面的(di)内容比较
		"jne 1f\n\t" //没有则结束
		"movb $1,1(%%edi)\n\t" //将对应页面内存映像比特位置1
		"sall $12,%%ecx\n\t" //页面数*4K = 相对页面起始地址
		"addl %2,%%ecx\n\t" //得到实际物理地址
		"movl %%ecx,%%edx\n\t" //将实际地址=》edx
		"movl $1024, %%ecx\n\t"
		"leal 4092(%%edx),%%edi\n\t" //该页面的末端
		"rep ; stosl\n\t" //将该页面清零
		"movl %%edx,%%eax\n"
		"1:"
		:"=a" (__res)
		: "0" (0), "i" (LOW_MEM), "c" (PAGING_PAGES),
		"D" (mem_map+PAGING_PAGES-1)
		:);
return __res;//返回0表示没有申请到内存，可能内存不够
}

/*
 * 释放物理地址addr开始的一页内存。
 *
 */
void free_page(unsigned long addr)
{
	if (addr < LOW_MEM) return;
	if (addr >= HIGH_MEMORY)
		panic("trying to free nonexistent page");
	addr -= LOW_MEM;
	addr >>= 12;
	if (mem_map[addr]--) return;
	mem_map[addr] = 0;
	panic("trying to free free page");
}

/*
 * 释放页表连续内存块
 */
int free_page_tables(unsigned long from, unsigned long size)
{
	unsigned long *pg_table;
	unsigned long * dir, nr;

	if (from & 0x3fffff)/*检测地址是否在4MB边界*/
		panic("free_page_tables called with wrong alignment");
	if (!from)/*from = 0表示释放内核和缓冲区*/
		panic("trying to free up swapper memory space");

	size = (size + 0x3fffff) >> 22;//释放页表个数
	dir = (unsigned long *) ((from>>20) & 0xffc); //起始需要释放目录项指针

	for ( ; size-->0 ; dir++) {
		if (!(1 & *dir)) //P=0则继续下一项
			continue;
		pg_table = (unsigned long *) (0xfffff000 & *dir); //取页表地址
		for (nr = 0 ; nr < 1024 ; nr++) {
			if (1 & *pg_table) //若该项有效，则释放对应页P = 1
				free_page(0xfffff000 & *pg_table);
			*pg_table = 0; //该页表项内容清零
			pg_table++;
		}
		free_page(0xfffff000 & *dir);
		*dir = 0;
	}
	invalidate(); //刷新页表换高速缓冲
	return 0;
}


/*写时复制*/
int copy_page_tables(unsigned long from, unsigned long to, long size)
{
	/*size需要4MB整数倍*/
	unsigned long * from_page_table;
	unsigned long * to_page_table;
	unsigned long this_page;
	unsigned long * from_dir, * to_dir;
	unsigned long nr;

	if ((from & 0x3fffff) || (to & 0x3fffff))//边界检测4MB
		panic("copy_page_tables called with wrong alignment");
	from_dir = (unsigned long *) ((from>>20) & 0xffc); //起始页目录项 pg_dir=0
	to_dir = (unsigned long *) ((to>>20) & 0xffc);
	size = ((unsigned) (size+0x3fffff)) >> 22; //所需复制页表个数
	
	for ( ; size-->0 ; from_dir++, to_dir++) {
		if (1 & *to_dir) //P=1
			panic("copy_page_tables: already exist");
		if (!(1 & *from_dir)) //P=0 对应页未使用，跳过此次循环
			continue;
		from_page_table = (unsigned long *) (0xfffff000 & *from_dir);
		if (!(to_page_table = (unsigned long *) get_free_page()))
			return -1;
		/* 设置目的目录项信息，置最后3位。既当前的目录项"或"上7.表示对应
		 * 页表映射的内存页面是用户级。并且可读写，存在(User,R/W,Present)。
		 * U/S为0则R/W没有作用
		 */
		*to_dir = ((unsigned long) to_page_table) | 7;
		nr = (from == 0)?0xA0:1024;//内核？用户？
		for ( ; nr-- > 0 ; from_page_table++, to_page_table++) {
			this_page = *from_page_table;
			if (!(1 & this_page)) //P=0
				continue;
			this_page &= ~2;
			*to_page_table = this_page;
			if (this_page > LOW_MEM) {
				*from_page_table = this_page;//使源页面也只读
				this_page -= LOW_MEM;
				this_page >>= 12;
				mem_map[this_page]++;
			}
		}
	}
	invalidate();
	return 0;
}

/* 在指定线性地址处映射一内存页面。在页目录和页表中设置该
 * 页面信息。返回该页面物理地址
 */
unsigned long put_page(unsigned long page, unsigned long address)
{
	unsigned long tmp, *page_table;

	if (page < LOW_MEM || page >= HIGH_MEMORY)
		printk("Trying to put page %p at %p\n", page, address);
	if (mem_map[(page-LOW_MEM)>>12] != 1)
		printk("mem_map disagress with %p at %p\n", page, address);
	page_table = (unsigned long *) ((address>>20) & 0xffc);
	if ((*page_table)&1) //P=1
		page_table = (unsigned long *) (0xfffff000 & *page_table);
	else {
		if (!(tmp = get_free_page()))
			return 0;
		*page_table = tmp | 7;
		page_table = (unsigned long *) tmp;
	}
	/*页表中的索引值为线性地址21-12位 10bit组成。一个页表1024项 0 - 0x3ff*/
	page_table[(address>>12) & 0x3ff] = page | 7;
	/*no need for invalidate*/
	return page;
}



/*取消写保护函数。用于页异常中断过程中写保护异常的处理(写时复制)*/
void un_wp_page(unsigned long * table_entry)
{
	unsigned long old_page, new_page;

	old_page = 0xfffff000 & *table_entry; //取指定页表项中的物理页面地址
	if (old_page >= LOW_MEM && mem_map[MAP_NR(old_page)] == 1) {
		/*只被引用一次，则设置可读写*/
		*table_entry |= 2; //R/W可写
		invalidate();
		return;
	}
	if (!(new_page=get_free_page()))
		oom(); //内存不够的处理
	if (old_page >= LOW_MEM)
		mem_map[MAP_NR(old_page)]--;
	*table_entry = new_page | 7;
	invalidate();
	copy_page(old_page, new_page);
}


/*写时复制*/
void do_wp_page(unsigned long error_code, unsigned long address)
{
#if 0
	if (CODE_SPACE(address)) //如果地址位于代码空间则终止执行程序
		do_exit(SIGSEGV);
#endif
	un_wp_page((unsigned long *)
			(((address>>10) & 0xffc) + (0xfffff000 &
			*((unsigned long *)((address>>20) & 0xffc)))));
}


/*写页面验证*/
/*若页面不可写，则复制页面，address为线性地址*/
void write_verify(unsigned long address)
{
	unsigned long page;

	if (!((page = *((unsigned long *) ((address>>20) & 0xffc))) & 1)) //P=0
		return;
	page &= 0xfffff000;
	page += ((address>>10) & 0xffc);
	if ((3 & *(unsigned long *) page) == 1)//检测位1(R/W)位0(P)
		un_wp_page((unsigned long *) page);
		return;
}


/*取一页空闲内存映射到线性地址处*/
void get_empty_page(unsigned long address)
{
	unsigned long tmp;
	if (!(tmp=get_free_page()) || !put_page(tmp,address)) {
		free_page(tmp);
		oom();
	}
}


/*尝试共享页面*/
static int try_to_share(unsigned long address, struct task_struct * p)
{
	unsigned long from;
	unsigned long to;
	unsigned long from_page;
	unsigned long to_page;
	unsigned long phys_addr;

	from_page = to_page = ((address>>20) & 0xffc);
	from_page += ((p->start_code>>20) & 0xffc); //p进程目录项
	to_page += ((current->start_code>>20) & 0xffc); //当前进程目录项

	/*在from处是否存在页目录项*/
	from = *(unsigned long *) from_page;
	if (!(from & 1)) //P=0
		return 0;
	from &= 0xfffff000; //页表指针
	from_page = from + ((address>>10) & 0xffc);//页表项指针
	phys_addr = *(unsigned long *) from_page; //页表项内容

	/*物理页干净并且存在吗*/
	if ((phys_addr & 0x41) != 0x01) //P D位
		return 0;
	phys_addr &= 0xfffff000;
	if (phys_addr >= HIGH_MEMORY || phys_addr < LOW_MEM)
		return 0;
	to = *(unsigned long *) to_page; //当前进程页表项内容
	if (!(to & 1)) //P=0
		if (to = get_free_page())
			*(unsigned long *) to_page = to | 7;
		else
			oom();
	to &= 0xfffff000;
	to_page = to + ((address>>10) & 0xffc);
	if (1 & *(unsigned long *) to_page)
		panic("try_to_share: to_page already exists");

	*(unsigned long *) from_page &= ~2;
	*(unsigned long *) to_page = *(unsigned long *) from_page;
	invalidate();
	phys_addr -= LOW_MEM;
	phys_addr >>= 12;
	mem_map[phys_addr]++;
	return 1;
	
}

static int share_page(unsigned long address)
{
	struct task_struct ** p;

	if (!current->executable)
		return 0;
	if (current->executable->i_count < 2)
		return 0;

	for (p = &LAST_TASK ; p > &FIRST_TASK ; --p) {
		if (!*p)
			continue;
		if (current == *p)
			continue;
		if ((*p)->executable != current->executable)
			continue;
		if (try_to_share(address, *p))
			return 1;
	} 
	return 0;
}

/*执行缺页处理*/
void do_no_page(unsigned long error_code, unsigned long address)
{
	int nr[4];
	unsigned long tmp;
	unsigned long page;
	int block, i;

	address &= 0xfffff000;
	tmp = address - current->start_code;

	if (!current->executable || tmp >= current->end_data) {
		get_empty_page(address);
		return;
	}

	if (share_page(tmp))
		return;
	if (!(page = get_free_page()))
		oom();
	block = 1 + tmp/BLOCK_SIZE;
	for (i = 0; i < 4; block++, i++)
		nr[i] = bmap(current->executable, block);
	bread_page(page, current->executable->i_dev, nr);

	i = tmp + 4096 -current->end_data;
	tmp = page + 4096;
	while(i-- > 0) {
		tmp--;
		*(char *)tmp = 0;
	}
	if (put_page(page, address))
		return;
	free_page(page);
	oom();
	
}




void mem_init(long start_mem, long end_mem)
{
	int i;
	
	HIGH_MEMORY = end_mem;
	for (i = 0; i < PAGING_PAGES; i++) {
		mem_map[i] = USED;
	}
	i = MAP_NR(start_mem);
	end_mem -= start_mem;
	end_mem >>= 12;
	while (end_mem-- > 0)
		mem_map[i++] = 0;	
}

/*计算内存空闲页并显示*/
void calc_mem(void)
{
	int i, j, k, free = 0;
	long * pg_tb1;

	for (i = 0; i <PAGING_PAGES; i++)
		if (!mem_map[i]) free++;
	printk("%d pages free (of %d)\n\r", free, PAGING_PAGES);
	for (i = 2; i < 1024; i++) {
		if (1 & pg_dir[i]) {
			pg_tb1 = (long *) (0xfffff000 & pg_dir[i]);
			for (j = k = 0 ; j < 1024; j++)
				if (pg_tb1[j] & 1)
					k++;
			printk("Pg-dir[%d] uses %d pages\n", i, k);
		}
	}
}
































