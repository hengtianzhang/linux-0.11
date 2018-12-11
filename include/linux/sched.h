#ifndef _SCHED_H
#define _SCHED_H

#define NR_TASKS 64  //系统中同时最多任务数
#define HZ 100 //定义系统时钟滴答频率 10ms

#define FIRST_TASK task[0] 
#define LAST_TASK task[NR_TASKS-1] //任务数组中的最后一项任务


#include <linux/head.h>
#include <linux/fs.h>
#include <linux/mm.h>
#include <signal.h>

#if (NR_OPEN > 32)
#error "Currently the close-on-exec-flags are in one word, max 32 files/proc"
#endif


/*定义进程运行可能处的状态*/

#define TASK_RUNNING         0 //进程正在运行或已准备就绪
#define TASK_INTERRUPTIBLE   1 //进程处于可中断等待状态
#define TASK_UNINTERRUPTIBLE 2 //进程处于不可中断等待状态，主要用于I/O操作等待
#define TASK_ZOMBIE          3 //进程处于僵死状态。已经停止运行，但父进程还没有发出信号
#define TASK_STOPPED         4 //进程已停止

#ifndef NULL
#define NULL ((void *) 0)
#endif










































#endif

