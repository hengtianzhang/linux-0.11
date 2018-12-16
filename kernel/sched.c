#include <linux/sched.h>
#include <linux/sys.h>
long user_stack [ PAGE_SIZE>>2 ] ;
struct {
	long * a;
	short b;
} stack_start = { & user_stack [ PAGE_SIZE>>2] , 0x10 };

struct task_struct * task[NR_TASKS];
long volatile jiffies = 0;
long startup_time = 0;
struct task_struct *current;
struct task_struct *last_task_used_math = NULL;
unsigned char current_DOR = 0x0C;

void schedule(void)
{

}
void math_state_restore()
{}
void do_timer()
{}
void wake_up(struct task_struct **p)
{
	
}

void sleep_on(struct task_struct ** p)
{
}
void floppy_on(unsigned int nr)
{}
void floppy_off(unsigned int nr)
{}
void interruptible_sleep_on(struct task_struct **p)
{}

void add_timer(long jiffies, void (*fn)(void))
{}

int ticks_to_floppy_on(unsigned int nr)
{}

