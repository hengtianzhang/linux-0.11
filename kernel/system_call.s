/*
 * int 0x80system_call int16 协处理器出错 int7 设备不存在 int32 时钟中断 int46硬盘中断
 * int38软盘中断
 *
 * Stack layout in 'ret_from_system_call':
 *
 *	 0(%esp) - %eax
 *	 4(%esp) - %ebx
 *	 8(%esp) - %ecx
 *	 C(%esp) - %edx
 *	10(%esp) - %fs
 *	14(%esp) - %es
 *	18(%esp) - %ds
 *	1C(%esp) - %eip
 *	20(%esp) - %cs
 *	24(%esp) - %eflags
 *	28(%esp) - %oldesp
 *	2C(%esp) - %oldss
 */
SIG_CHLD   = 17 #子进程停止或终止

EAX     = 0x00 #堆栈中各寄存器的偏移位置
EBX 	= 0x04
ECX 	= 0x08
EDX 	= 0x0C
FS		= 0x10
ES		= 0x14
DS		= 0x18
EIP 	= 0x1C
CS		= 0x20
EFLAGS		= 0x24
OLDESP		= 0x28 #当特权级变化时栈切换，用户栈指针被保存在内核栈中
OLDSS		= 0x2C

/*任务结构中变量偏移值*/
state = 0 #进程状态码
counter = 4 #任务运行时间计数
priority = 8 #运行优先数
signal = 12 #信号位图
sigaction = 16
blocked = (33*16) #受阻塞信号位图的偏移量

#sigaction结构中偏移
sa_handler = 0 #信号处理过程句柄
sa_mask = 4
sa_flags = 8 #信号集
sa_restorer = 12 #恢复指针

nr_system_calls = 72 #系统调用总数


.global system_call, sys_fork, timer_interrupt, sys_execve
.global hd_interrupt, floppy_interrupt, parallel_interrupt
.global device_not_available, coprocessor_error

.align 4
bad_sys_call:
	movl $-1, %eax
	iret

/*重新执行调度入口，*/
.align 4
reschedule:
	pushl $ret_from_sys_call
	jmp schedule

/*int 0x80 eax功能号*/
.align 4
system_call:
	cmpl $nr_system_calls-1, %eax
	ja bad_sys_call
	push %ds
	push %es
	push %fs
	pushl %edx #第三个参数
	pushl %ecx #第二个参数
	pushl %ebx #第一个参数
	movl $0x10, %edx
	mov %dx, %ds
	mov %dx, %es
	/*fs为调用者的数据段。内核分配给任务的代码和数据内存段重叠，段基址和限长一致*/
	movl $0x17, %edx
	mov %dx, %fs
	/*call sys_call_table + %eax*4*/
	call sys_call_table(,%eax,4)
	pushl %eax #系统调用返回值入栈
	/* 查看当前任务的运行状态。如果不在就绪stat=0就去执行调度
  	 * 任务就绪，但时间片已用尽counter=0，也执行调度
	 */
	movl current, %eax
	cmpl $0, state(%eax)
	jne reschedule
	cmpl $0, counter(%eax)
	je reschedule

/*系统调用返回后，对信号进行识别处理*/
ret_from_sys_call:
/* 首先判断当前任务是否是初始任务task0，是则直接返回
 */
	movl current, %eax
	cmpl task,%eax
	je 3f
/* 下面通过源调用程序代码选择符检查判断是否是用户任务，不是则直接退出
 * 内核态执行时不可抢占。 0x000f RPL=3 局部表，代码段判断是否为用户任务
 * 不是则是某个中断服务
 */
	cmpw $0x0f,CS(%esp)
	jne 3f
	cmpw $0x17,OLDSS(%esp)
	jne 3f

/* 下面处理当前任务中的信号，取当前任务结构信号位图
 * 用任务结构中信号阻塞码，阻塞不允许的信号位，取得数值最小的信号值
 * 再把原信号位图该信号对应的位复位0.最后将该信号作为参数调用do_signal
 */
	movl signal(%eax), %ebx #取信号位图
	movl blocked(%eax), %ecx #取阻塞信号位图
	notl %ecx #每位取反
	andl %ebx, %ecx #获取允许的信号位图
	bsfl %ecx, %ecx #从低位0开始扫描位图是否有1，有则ecx保留该位的偏移值
	je 3f #没有信号则跳转
	btrl %ecx,%ebx #复位该信号0 ebx源singal位图
	movl %ebx,signal(%eax) #重新保存signal位图
	incl %ecx
	pushl %ecx
	call do_signal
	popl %eax
3:
	popl %eax #系统调用返回值
	popl %ebx
	popl %ecx
	popl %edx
	pop %fs
	pop %es
	pop %ds
	iret

/*int16 处理器错误*/
/*外部硬件异常*/
coprocessor_error:
	push %ds
	push %es
	push %fs
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	movl $0x10, %eax
	mov %ax, %ds
	mov %ax, %es
	movl $0x17, %eax
	mov %ax, %fs
	pushl $ret_from_sys_call
	jmp math_error


