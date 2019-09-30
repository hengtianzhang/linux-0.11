/*
 * 包括大部分CPU探测到的异常故障处理的底层代码。包括数学
 * 协处理器FPU的异常处理.硬件故障
 */
/*主要是涉及对Inerl保留中断int0-int16的处理*/
.global divide_error, debug, nmi, int3, overflow, bounds, invalid_op
.global double_fault, coprocessor_segment_overrun
.global invalid_TSS, segment_not_present, stack_segment
.global general_protection, coprocessor_error, irq13, reserved

/*处理无处错号情况*/
/*int0 处理被零除出错的情况，类型：Fault，无出错号*/
/*执行DIV IDIV 若除数是0，CPU产生这个异常。
 * 当EAX AX AL容纳不了一个合法除操作的结果也产生
 */
divide_error:
	pushl $do_divide_error
no_error_code:
	xchgl %eax, (%esp)
	pushl %ebx
	pushl %ecx
	pushl %edx
	pushl %edi
	pushl %esi
	pushl %ebp
	pushl %ds
	pushl %es
	pushl %fs
	pushl $0 #将数值0作为出错码压入
	lea 44(%esp), %edx #取堆栈中原调用返回地址处的堆栈指针
	pushl %edx
	movl $0x10, %edx
	mov %dx, %ds
	mov %dx, %es
	mov %dx, %fs
	call *%eax #间接调用do_divide_error
	addl $8, %esp
	pop %fs
	pop %es
	pop %ds
	popl %ebp
	popl %esi
	popl %edi
	popl %edx
	popl %ecx
	popl %ebx
	popl %eax
	iret
	
/* int1 debug调试中断入口点 类型 错误Fault 陷阱Trap，无出错码
 * 当EFLAGS中TF标志置位时引发。当发现硬件断点 或者开启了
 * 指令跟踪陷阱或任务交换陷阱或调式寄存器访问无效CPU就会产生
 * 该异常
 */
debug:
	pushl $do_int3
	jmp no_error_code

/*
 * int2 非屏蔽中断 陷阱 无处错号
 * 这里仅有被赋予固定中断向量的硬件中断
 */
nmi:
	pushl $do_nmi
	jmp no_error_code

/*
 * 断点指令引起 陷阱 int 3指令引发。与硬件无关
 */
int3:
	pushl $do_int3
	jmp no_error_code

/*
 * int4 溢出 陷阱 EFLAGS中OF置位CPU执行INT0指令引发 用于编译器跟踪
 * 算术计算溢出
 */
overflow:
	pushl $do_overflow
	jmp no_error_code

/*
 * 边界检查出错 错误
 * 当操作数在有效范围外引发 当BOUND指令测试失败产生
 * BOUND指令有三个操作数，第一个不再另外两个之间引发
 */
bounds:
	pushl $do_bounds
	jmp no_error_code


/*
 * int6 无效操作 错误
 * CPU执行机构检测到一个无效的操作码
 */
invalid_op:
	pushl $do_invalid_op
	jmp no_error_code


/*
 * int9 协处理器段超出 类型：放弃
 * 该异常基本等同于协处理器出错保护。浮点指令操作数太大
 * 加载或保存超出数据段的浮点值
 */
coprocessor_segment_overrun:
	pushl $coprocessor_segment_overrun
	jmp no_error_code

/*
 * int15 其他Interl保留中断入口
 */
reserved:
	pushl $do_reserved
	jmp no_error_code

/*int45 0x20 + 13 数学协处理器硬件中断*/
/*
 * 当协处理器执行完一个操作时就会发出IRQ13中断。80387计算时
 * CPU将等待其操作完成。 0xF0协处理器端口。用于清忙锁存器
 * 确保继续执行80387任何指令之前。CPU响应本中断
 */
irq13:
	pushl %eax
	xorb %al, %al
	outb %al,$0xF0
	movb $0x20, %al
	outb %al, $0x20 #向8259A主发送EOI信号(中断结束)
	jmp 1f
1:
	jmp 1f
1:
	outb %al, $0xA0 #8259A从 EOI
	popl %eax
	jmp coprocessor_error




/*以下中断在调用时CPU压入出错码*/

/*调用异常处理之前再次检测到异常 产生 类型 放弃*/
double_fault:
	pushl $do_double_fault
error_code:
	xchgl %eax,4(%esp)		# error code <-> %eax
	xchgl %ebx,(%esp)		# &function <-> %ebx
	pushl %ecx
	pushl %edx
	pushl %edi
	pushl %esi
	pushl %ebp
	push %ds
	push %es
	push %fs
	pushl %eax			# error code
	lea 44(%esp),%eax		# offset
	pushl %eax
	movl $0x10,%eax
	mov %ax,%ds
	mov %ax,%es
	mov %ax,%fs
	call *%ebx
	addl $8,%esp
	pop %fs
	pop %es
	pop %ds
	popl %ebp
	popl %esi
	popl %edi
	popl %edx
	popl %ecx
	popl %ebx
	popl %eax
	iret


/*int10 无效的任务状态段TSS 错误*/
/*CPU企图切换到一个进程而该进程TSS无效*/
invalid_TSS:
	pushl $do_invalid_TSS
	jmp error_code

/*int11 段不存在 错误*/
/*被引用的段不存在内存*/
segment_not_present:
	pushl $do_segment_not_present
	jmp error_code

/*int12 堆栈错误*/
/*堆栈溢出。或堆栈不在内存*/
stack_segment:
	pushl $do_stack_segment
	jmp error_code

/*int13 一般保护性错误*/
/*表明是不属于任何其他类的错误。若异常产生时没有对应
 *处理向量0--16 通常归于此类
 */
general_protection:
	pushl $do_general_protection
	jmp error_code











