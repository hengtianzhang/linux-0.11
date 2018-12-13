/*
 * 处理一些异常故障(硬件中断)底层代码asm.s中调用的C函数
 * 用于显示出错位置和出错号。
 *
 */
#include <string.h>
#include <linux/head.h> //段描述符的简单结构。和几个选择符常量
#include <linux/sched.h> //调度程序头文件
#include <linux/kernel.h> //内核常用函数
#include <asm/system.h> //设置或修改描述符/中断门的嵌入式汇编宏
#include <asm/segment.h> //段操作头文件。段寄存器的操作
#include <asm/io.h> //输入输出。硬件端口输入输出汇编宏

#define get_seg_byte(seg,addr) ({ \
register char __res; \
__asm__("push %%fs;mov %%ax,%%fs;movb %%fs:%2,%%al;pop %%fs" \
	:"=a" (__res):"0" (seg),"m" (*(addr))); \
__res;})

#define get_seg_long(seg,addr) ({ \
register unsigned long __res; \
__asm__("push %%fs;mov %%ax,%%fs;movl %%fs:%2,%%eax;pop %%fs" \
	:"=a" (__res):"0" (seg),"m" (*(addr))); \
__res;})

/*取fs段寄存器的值*/
#define _fs() ({ \
register unsigned short __res; \
__asm__("mov %%fs,%%ax":"=a" (__res):); \
__res;})

int do_exit(long code); //程序退出处理

void page_exception(void); //页异常

/*中断处理原型，asm.s system_call.s实现*/
void divide_error(void); //int0
void debug(void); //int1
void nmi(void); //int2
void int3(void); //int3
void overflow(void); //int4
void bounds(void); // int5
void invalid_op(void); //int6
void device_not_available(void); //int7
void double_fault(void); //int8
void coprocessor_segment_overrun(void); // int9
void invalid_TSS(void); //int10
void segment_not_present(void); //int11
void stack_segment(void); //int12
void general_protection(void); //int13
void page_fault(void); //int14
void coprocessor_error(void); //int16
void reserved(void); //int15
void parallel_interrupt(void); //int39
void irq13(void); //int45 (协处理器中断处理)

/* 用于打印出错中断的名称，出错号，调用程序的EIP EFLAGS ESP fs
 * 段基址 段长度 进程号pid 任务号 10字节指令码。 如果堆栈在用户
 * 段，则还打印16字节的堆栈内容
 */
static void die(char * str, long esp_ptr, long nr)
{
	long * esp = (long *) esp_ptr;
	int i;

	printk("%s: %04x\n\r", str, nr&0xffff);
	/* esp[1] 段选择符CS esp[0] eip
     * esp[2] eflags
     * esp[4] 原ss esp[3]原esp
	 */
	printk("EIP:\t%04x:%p\nEFLAGS:\t%p\nESP:\t%04x:%p\n",
		esp[1],esp[0],esp[2],esp[4],esp[3]);
	printk("fs: %04x\n",_fs());
	printk("base: %p, limit: %p\n",get_base(current->ldt[1]),get_limit(0x17));
	if (esp[4] == 0x17) {
		printk("Stack: ");
		for (i=0;i<4;i++)
			printk("%p ",get_seg_long(0x17,i+(long *)esp[3]));
		printk("\n");
	}
	str(i); //取当前运行任务的任务号
	printk("Pid: %d, process nr: %d\n\r",current->pid,0xffff & i);
	for(i=0;i<10;i++)
		printk("%02x ",0xff & get_seg_byte(esp[1],(i+(char *)esp[0])));
	printk("\n\r");
	do_exit(11);		/* play segment exception */
}

/*asm.s中对应的中断处理程序调用的C函数*/
void do_double_fault(long esp, long error_code)
{
	die("double fault",esp,error_code);
}

void do_general_protection(long esp, long error_code)
{
	die("general protection",esp,error_code);
}

void do_divide_error(long esp, long error_code)
{
	die("divide error",esp,error_code);
}

void do_int3(long * esp, long error_code,
		long fs,long es,long ds,
		long ebp,long esi,long edi,
		long edx,long ecx,long ebx,long eax)
{
	int tr;

	__asm__("str %%ax":"=a" (tr):"0" (0));
	printk("eax\t\tebx\t\tecx\t\tedx\n\r%8x\t%8x\t%8x\t%8x\n\r",
		eax,ebx,ecx,edx);
	printk("esi\t\tedi\t\tebp\t\tesp\n\r%8x\t%8x\t%8x\t%8x\n\r",
		esi,edi,ebp,(long) esp);
	printk("\n\rds\tes\tfs\ttr\n\r%4x\t%4x\t%4x\t%4x\n\r",
		ds,es,fs,tr);
	printk("EIP: %8x   CS: %4x  EFLAGS: %8x\n\r",esp[0],esp[1],esp[2]);
}

void do_nmi(long esp, long error_code)
{
	die("nmi",esp,error_code);
}

void do_debug(long esp, long error_code)
{
	die("debug",esp,error_code);
}

void do_overflow(long esp, long error_code)
{
	die("overflow",esp,error_code);
}

void do_bounds(long esp, long error_code)
{
	die("bounds",esp,error_code);
}

void do_invalid_op(long esp, long error_code)
{
	die("invalid operand",esp,error_code);
}

void do_device_not_available(long esp, long error_code)
{
	die("device not available",esp,error_code);
}

void do_coprocessor_segment_overrun(long esp, long error_code)
{
	die("coprocessor segment overrun",esp,error_code);
}

void do_invalid_TSS(long esp,long error_code)
{
	die("invalid TSS",esp,error_code);
}

void do_segment_not_present(long esp,long error_code)
{
	die("segment not present",esp,error_code);
}

void do_stack_segment(long esp,long error_code)
{
	die("stack segment",esp,error_code);
}

void do_coprocessor_error(long esp, long error_code)
{
	if (last_task_used_math != current)
		return;
	die("coprocessor error",esp,error_code);
}

void do_reserved(long esp, long error_code)
{
	die("reserved (15,17-47) error",esp,error_code);
}

void trap_init(void)
{
	int i;

	set_trap_gate(0,&divide_error);
	set_trap_gate(1,&debug);
	set_trap_gate(2,&nmi);
	set_system_gate(3,&int3);	/* int3-5 can be called from all */
	set_system_gate(4,&overflow);
	set_system_gate(5,&bounds);
	set_trap_gate(6,&invalid_op);
	//set_trap_gate(7,&device_not_available);
	set_trap_gate(8,&double_fault);
	set_trap_gate(9,&coprocessor_segment_overrun);
	set_trap_gate(10,&invalid_TSS);
	set_trap_gate(11,&segment_not_present);
	set_trap_gate(12,&stack_segment);
	set_trap_gate(13,&general_protection);
	set_trap_gate(14,&page_fault);
	set_trap_gate(15,&reserved);
	set_trap_gate(16,&coprocessor_error);
	for (i=17;i<48;i++)
		set_trap_gate(i,&reserved);
	set_trap_gate(45,&irq13);/*设置协处理器中断0x2d 45*/ 
	outb_p(inb_p(0x21)&0xfb,0x21); /*允许8259A主IRQ2*/
	outb(inb_p(0xA1)&0xdf,0xA1); /*允许8259A从IRQ13*/
	//set_trap_gate(39,&parallel_interrupt);/*设置并行口1的中断0x27陷阱门*/

}





