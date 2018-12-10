#include <signal.h>
#include <asm/system.h>
#include <linux/sched.h>
#include <linux/head.h>
//#include <linux/kernel.h>


/*print mem full error*/
static inline volatile void oom(void)
{
	printk("out of memory\n\r");
	//do_exit(SIGSEGV);
}

void mem_init(long start_mem, long end_mem)
{
	int i;
}

/*取空闲页面函数，返回页面地址*/
unsigned long get_free_page(void)
{}

/* 在指定线性地址处映射一内存页面。在页目录和页表中设置该
 * 页面信息。返回该页面物理地址
 */
unsigned long put_page(unsigned long page, unsigned long address)
{}
/*释放物理地址addr开始的一页内存。*/
void free_page(unsigned long addr)
{}

