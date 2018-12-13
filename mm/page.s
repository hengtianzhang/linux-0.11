/*
 * 页异常处理中断(int 14)，
 * 1：由于缺页引起的页异常。call do_no_page(error_code, address)
 * 2：由于页写保护引起的的异常，此时调用do_wp_page(error_code,address)
 * error_code 有CPU压入堆栈 address从控制寄存器cr2中取得。
 * cr2专门用来存放页出错时的线性地址
 *
 */
 
.global page_fault
page_fault:
	xchgl %eax, (%esp) #取出错码
	pushl %ecx
	pushl %edx
	pushl %ds
	pushl %es
	pushl %fs
	movl $0x10, %edx #置内核数据段选择符
	movw %dx, %ds
	movw %dx, %es
	movw %dx, %fs
	movl %cr2, %edx #取线性地址
	pushl %edx
	pushl %eax
	testl $1, %eax #测试页存在标志P，不是缺页引起的异常则跳转
	jne 1f
	call do_no_page #调用缺页处理函数
	jmp 2f
1:
	call do_wp_page
2:
	addl $8, %esp #丢弃压入栈的两个参数
	pop %fs
	pop %es
	pop %ds
	popl %edx
	popl %ecx
	popl %eax
	iret
