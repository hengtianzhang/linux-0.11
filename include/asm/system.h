/*
 * 定义设置或修改描述符/中断门等嵌入式汇编
 *
 */
#define move_to_user_mode() \
__asm__("movl %%esp,%%eax\n\t" \     //保存堆栈指针esp到eax
		"pushl $0x17\n\t" \          //首先将堆栈段选择符(SS)入栈
		"pushl %%eax\n\t" \
		"pushfl\n\t" \               //eflags入栈
		"pushl $0x0f\n\t" \          //Task0代码段入栈
		"pushl $1f\n\t" \            //标号1偏移地址eip入栈
		"iret\n" \                   //执行中断返回指令，会跳转至标号1
		"1: \tmovl $0x17,%%eax\n\t" \     //此时执行任务0
		"movw %%ax,%%ds\n\t" \
		"movw %%ax,%%es\n\t" \
		"movw %%ax,%%fs\n\t" \
		"movw %%ax,%%gs" \
		:::"ax")


 #define sti() __asm__("sti"::)  //开中断
 #define cli() __asm__("cli"::)  //关中断
 #define nop() __asm__("nop"::)  //空操作

 #define iret() __asm__("iret"::) //中断返回

/*设置门描述符宏*/
/* 根据参数中的中断或异常处理过程地址addr，门描述符类型type，和特权级信息dpl，
 * 设置位于地址gate_addr处的门描述符。
 */
#define _set_gate(gate_addr,type,dpl,addr) \
__asm__("movw %%dx,%%ax\n\t" \  //将偏移地址低字与选择符组合成描述符低4字节(eax)
		"movw %0,%%dx\n\t" \    //将类型标志字与偏移高字组合成描述符高4字节(edx)
		"movl %%eax,%1\n\t" \   //分别设置门描述符的低4字节和高4字节
		"movl %%edx,%2" \
		: \
		: "i" ((short) (0x8000+(dpl<<13)+(type<<8))), \
		"o" (*((char *) (gate_addr))), \
		"o" (*(4+(char *) (gate_addr))), \
		"d" ((char *) (addr)), "a" (0x00080000))


/*设置中断门函数(自动屏蔽随后中断)*/
/*
 * 参数： n 中断号  addr 中断程序偏移地址
 *  &idt[n]
 */
#define set_intr_gate(n,addr) \
	_set_gate(&idt[n],14,0,addr)   //14中断    15陷阱











 