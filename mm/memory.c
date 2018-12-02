#include <linux/sched.h>
#include <linux/head.h>


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
