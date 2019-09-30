#ifndef _SCHED_H
#define _SCHED_H

#define NR_TASKS 64 //系统中同时最多任务数
#define HZ 100 //定义系统时钟滴答频率 10ms

#define FIRST_TASK task[0]
#define LAST_TASK task[NR_TASKS - 1] //任务数组中的最后一项任务

#include <linux/head.h>
#include <linux/fs.h>
#include <linux/mm.h>
#include <signal.h>

#if (NR_OPEN > 32)
#error "Currently the close-on-exec-flags are in one word, max 32 files/proc"
#endif

/*定义进程运行可能处的状态*/

#define TASK_RUNNING 0 //进程正在运行或已准备就绪
#define TASK_INTERRUPTIBLE 1 //进程处于可中断等待状态
#define TASK_UNINTERRUPTIBLE 2 //进程处于不可中断等待状态，主要用于I/O操作等待
#define TASK_ZOMBIE 3 //进程处于僵死状态。已经停止运行，但父进程还没有发出信号
#define TASK_STOPPED 4 //进程已停止

#ifndef NULL
#define NULL ((void *)0)
#endif

/*复制进程的页目录页表。mm/memory.c*/
extern int copy_page_tables(unsigned long from, unsigned long to, long size);

/*释放页表所指定的内存块及页表本身*/
extern int free_page_tables(unsigned long from, unsigned long size);

/*调度程序的初始化*/
extern void sched_init(void);

/*进程调度*/
extern void schedule(void);

/*异常(陷阱)中断处理函数初始化，设置中断调用门并允许中断请求*/
extern void trap_init(void);

/*显示内核出错信息，然后死循环*/
extern void panic(const char *str);

/*往tty上写指定长度的字符串*/
extern int tty_write(unsigned minor, char *buf, int count);

typedef int (*fn_ptr)();

/*数学协处理器使用的结构，主要用于保存进程切换时i387的执行状态*/
struct i387_struct {
	long cwd; //控制字
	long swd; //状态字
	long twd; //标记字
	long fip; //协处理器代码指针
	long fcs; //协处理器代码段寄存器
	long foo; //内存操作数的偏移位置
	long fos; //内存操作数的段值
	long st_space[20]; //八个10字节的协处理器累加器
};

/*任务状态段数据结构*/
struct tss_struct {
	long back_link; /* 16 high bits zero */
	long esp0;
	long ss0; /* 16 high bits zero */
	long esp1;
	long ss1; /* 16 high bits zero */
	long esp2;
	long ss2; /* 16 high bits zero */
	long cr3;
	long eip;
	long eflags;
	long eax, ecx, edx, ebx;
	long esp;
	long ebp;
	long esi;
	long edi;
	long es; /* 16 high bits zero */
	long cs; /* 16 high bits zero */
	long ss; /* 16 high bits zero */
	long ds; /* 16 high bits zero */
	long fs; /* 16 high bits zero */
	long gs; /* 16 high bits zero */
	long ldt; /* 16 high bits zero */
	long trace_bitmap; /* bits: trace 0, bitmap 16-31 */
	struct i387_struct i387;
};

/*这里是任务数据结构，进程描述符*/
struct task_struct {
	/* these are hardcoded - don't touch */
	long state; /* -1 不可运行, 0 runnable, >0 stopped */
	long counter; /*任务运行时间计数(递减)*/
	long priority; /*运行优先级。*/
	long signal; /*信号。每个比特代表一种信号*/
	struct sigaction sigaction[32]; /*信号执行属性结构。*/
	long blocked; /* bitmap of masked signals信号屏蔽码 */
	/* various fields */
	int exit_code; /*任务执行停止的退出码*/
	unsigned long start_code, end_code, end_data, brk, start_stack; /**/
	long pid, father, pgrp, session, leader;
	unsigned short uid, euid, suid;
	unsigned short gid, egid, sgid;
	long alarm; /*报警定时值*/
	long utime, stime, cutime, cstime, start_time;
	unsigned short used_math; /*是否使用了协处理器*/
	/* file system info */
	int tty; /* -1 if no tty, so it must be signed */
	unsigned short umask; /*文件创建属性屏蔽码*/
	struct m_inode *pwd; /*当前工作目录i节点*/
	struct m_inode *root; /*根目录i节点结构*/
	struct m_inode *executable; /*执行文件i节点结构*/
	unsigned long close_on_exec; /*执行时关闭文件句柄标志*/
	struct file *filp[NR_OPEN]; /*进程使用的文件表结构*/
	/* ldt for this task 0 - zero 1 - cs 2 - ds&ss */
	struct desc_struct ldt[3];
	/* tss for this task */
	struct tss_struct tss;
};

/*INIT_TASK用于设置第一个任务*/
/*基址Base=0 段限长limit=0x9ffff(640KB)*/
#define INIT_TASK                                                              \
	/* state etc */ {                                                      \
		0, 15, 15, /* signals */ 0,                                    \
			{                                                      \
				{},                                            \
			},                                                     \
			0, /* ec,brk... */ 0, 0, 0, 0, 0, 0,                   \
			/* pid etc.. */ 0, -1, 0, 0, 0, /* uid etc */ 0, 0, 0, \
			0, 0, 0, /* alarm */ 0, 0, 0, 0, 0, 0, /* math */ 0,   \
			/* fs info */ -1, 0022, NULL, NULL, NULL, 0,           \
			/* filp */                                             \
			{                                                      \
				NULL,                                          \
			},                                                     \
			{                                                      \
				{ 0, 0 },                                      \
				/* ldt */ { 0x9f, 0xc0fa00 },                  \
				{ 0x9f, 0xc0f200 },                            \
			},                                                     \
			/*tss*/ { 0,       PAGE_SIZE + (long)&init_task,       \
				  0x10,    0,                                  \
				  0,       0,                                  \
				  0,       (long)&pg_dir,                      \
				  0,       0,                                  \
				  0,       0,                                  \
				  0,       0,                                  \
				  0,       0,                                  \
				  0,       0,                                  \
				  0x17,    0x17,                               \
				  0x17,    0x17,                               \
				  0x17,    0x17,                               \
				  _LDT(0), 0x80000000,                         \
				  {} },                                        \
	}

extern struct task_struct *task[NR_TASKS]; //任务指针数组
extern struct task_struct *last_task_used_math; // 上一个使用过协处理器的进程
extern struct task_struct *current; //当前进程结构指针变量
extern long volatile jiffies; //从开机开始算起的滴答数(10ms/滴答)
extern long startup_time; //开机时间.从1970:0:0:0开始计时秒数

#define CURRENT_TIME (startup_time + jiffies / HZ) /*秒数*/

/*添加定时器函数*/
extern void add_timer(long jiffies, void (*fn)(void));

/*不可中断的等待睡眠*/
extern void sleep_on(struct task_struct **p);

/*可中断的等待睡眠*/
extern void interruptible_sleep_on(struct task_struct **p);

/*明确唤醒睡眠的进程*/
extern void wake_up(struct task_struct **p);

/*
 * 在GDT表中寻找第一个TSS入口。0-没有用null  1-代码段cs   
 * 2-数据段 3-系统调用 4-任务状态段TSS0 5-局部表LDT0 
 * 6-任务状态段TSS1....
 */
/*第一个任务状态段TSS0 选择符索引号*/
#define FIRST_TSS_ENTRY 4

#define FIRST_LDT_ENTRY (FIRST_TSS_ENTRY + 1)

/*第n个任务的TSS段选择符值     */
#define _TSS(n) ((((unsigned long)n) << 4) + (FIRST_TSS_ENTRY << 3))

/*第n个任务的LDT段选择符值     */
#define _LDT(n) ((((unsigned long)n) << 4) + (FIRST_LDT_ENTRY << 3))

/*加载第n个任务的TSS段选择符到TR*/
#define ltr(n) __asm__("ltr %%ax" ::"a"(_TSS(n)))

/*加载第n个任务的LDT段选择符到LDTR*/
#define lldt(n) __asm__("lldt %%ax" ::"a"(_LDT(n)))

/*取当前运行任务的任务号*/
#define str(n)                                                                 \
	/*将任务寄存器中TSS段的选择符复制到ax*/ __asm__(                       \
		"str %%ax\n\t"                                                 \
		"subl %2,%%eax\n\t" /*当前任务号*/ "shrl $4,%%eax"             \
		: "=a"(n)                                                      \
		: "a"(0), "i"(FIRST_TSS_ENTRY << 3))

/*
 * switch_to(n)将切换当前任务到任务nr。首先检测任务n不是当前任务，
 * 如果是则退出。如果切换到任务最近使用过数学协处理器，则还需要复位
 * 控制寄存器cr0中TS标志位
 *
 * 跳转至一个任务的TSS段选择符组成的地址处会造成CPU进行任务切换
 * 输入：%0 指向__tmp %1 指向__tmp.b处，用于存放新TSS的选择符
 *      dx新任务n的TSS段选择符  
 *      ecx新任务n的任务结构指针task[n]
 *
 */
#define switch_to(n)                                                              \
	{                                                                         \
		struct {                                                          \
			long a, b;                                                \
		} __tmp;                                                          \
		__asm__("cmpl %%ecx,current\n\t" /*相等则什么都不做*/ "je 1f\n\t" \
			"movw %%dx,%1\n\t"                                        \
			"xchgl %%ecx,current\n\t"                                 \
			"ljmp *%0\n\t"                                            \
			"cmpl %%ecx, last_task_used_math\n\t"                     \
			"jne 1f\n\t" /*清cr0中TR标志*/ "clts\n"                   \
			"1:" ::"m"(*&__tmp.a),                                    \
			"m"(*&__tmp.b), "d"(_TSS(n)), "c"((long)task[n]));        \
	}

/*页面地址对准*/
#define PAGE_ALIGN(n) (((n) + 0xfff) & 0xfffff000)
/*设置位于地址addr处描述符中的各基地址字段*/
#define _set_base(addr, base)                                                  \
	__asm__("movw %%dx,%0\n\t"                                             \
		"rorl $16,%%edx\n\t"                                           \
		"movb %%dl,%1\n\t"                                             \
		"movb %%dh,%2" ::"m"(*((addr) + 2)),                           \
		"m"(*((addr) + 4)), "m"(*((addr) + 7)), "d"(base)              \
		:)

/*设置位于地址addr处描述符中的段限长*/
#define _set_limit(addr, limit)                                                \
	__asm__("movw %%dx,%0\n\t"                                             \
		"rorl $16,%%edx\n\t"                                           \
		"movb %1,%%dh\n\t"                                             \
		"andb $0xf0,%%dh\n\t"                                          \
		"orb %%dh,%%dl\n\t"                                            \
		"movb %%dl,%1" ::"m"(*(addr)),                                 \
		"m"(*((addr) + 6)), "d"(limit)                                 \
		:)

#define set_base(ldt, base) _set_base(((char *)&(ldt)), base)
#define set_limit(ldt, limit) _set_limit(((char *)&(ldt)), (limit - 1) >> 12)

/*	
#define _get_base(addr) ({\
unsigned long __base; \
__asm__("movb %3,%%dh\n\t" \
	"movb %2,%%dl\n\t" \
	"shll $16,%%edx\n\t" \
	"movw %1,%%dx" \
	:"=d" (__base) \
	:"m" (*((addr)+2)), \
	 "m" (*((addr)+4)), \
	 "m" (*((addr)+7))); \
__base;})
*/

static inline unsigned long _get_base(char *addr)
{
	unsigned long __base;
	__asm__("movb %3, %%dh\n\t"
		"movb %2, %%dl\n\t"
		"shll $16, %%edx\n\t"
		"movw %1, %%dx"
		: "=&d"(__base)
		: "m"(*((addr) + 2)), "m"(*((addr) + 4)), "m"(*((addr) + 7)));
	return __base;
}

#define get_base(ldt) _get_base(((char *)&(ldt)))

#define get_limit(segment)                                                     \
	({                                                                     \
		unsigned long __limit;                                         \
		__asm__("lsll %1,%0\n\tincl %0"                                \
			: "=r"(__limit)                                        \
			: "r"(segment));                                       \
		__limit;                                                       \
	})

#endif
