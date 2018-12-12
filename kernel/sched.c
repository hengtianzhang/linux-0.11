#include<linux/sched.h>

long user_stack [ PAGE_SIZE>>2 ] ;
struct {
	long * a;
	short b;
} stack_start = { & user_stack [ PAGE_SIZE>>2] , 0x10 };

struct task_struct * task[NR_TASKS];

struct task_struct *current;
