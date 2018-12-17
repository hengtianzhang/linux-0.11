/*
 * 定义设置或修改描述符/中断门等嵌入式汇编
 *
 */
 /****************************************************************
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
*****************************************************************/
#define move_to_user_mode() \
__asm__("movl %%esp,%%eax\n\t" \
		"pushl $0x17\n\t" \
		"pushl %%eax\n\t" \
		"pushfl\n\t" \
		"pushl $0x0f\n\t" \
		"pushl $1f\n\t" \
		"iret\n" \
		"1: \tmovl $0x17,%%eax\n\t" \
		"movw %%ax,%%ds\n\t" \
		"movw %%ax,%%es\n\t" \
		"movw %%ax,%%fs\n\t" \
		"movw %%ax,%%gs" \
		:::)


 #define sti() __asm__("sti"::)  //开中断
 #define cli() __asm__("cli"::)  //关中断
 #define nop() __asm__("nop"::)  //空操作

 #define iret() __asm__("iret"::) //中断返回

/*设置门描述符宏*/
/* 根据参数中的中断或异常处理过程地址addr，门描述符类型type，和特权级信息dpl，
 * 设置位于地址gate_addr处的门描述符。
 */
/*****************************************************************************
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
****************************************************************/
 #define _set_gate(gate_addr,type,dpl,addr) \
 __asm__("movw %%dx,%%ax\n\t" \
		 "movw %0,%%dx\n\t" \
		 "movl %%eax,%1\n\t" \
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



/*设置陷阱门函数*/
#define set_trap_gate(n,addr) \
	_set_gate(&idt[n],15,0,addr)


/*设置系统陷阱门函数*/
#define set_system_gate(n,addr) \
	_set_gate(&idt[n],15,3,addr)


/*设置段描述符函数(内核未使用)*/
#define _set_seg_desc(gate_addr,type,dpl,base,limit) {\
	*(gate_addr) = ((base) & 0xff000000) | \
		(((base) & 0x00ff0000)>>16) | \
		((limit) & 0xf0000) | \
		((dpl)<<13) | \
		(0x00408000) | \
		((type)<<8); \
	*((gate_addr)+1) = (((base)& 0x0000ffff)<<16) | \
		((limit) & 0x0ffff); }


/*在全局表中设置任务状态段/局部表描述符。状态段和局部表段的长度均被设置成104字节*/
/*
 * 参数： n 在全局表中描述符项n所对应的地址。addr状态段/局部表所在内存基址
 * 
 */
/********************************************************************
#define _set_tssldt_desc(n,addr,type) \
__asm__("movw $104,%1\n\t" \        //将TSS(或LDT)长度放入描述符长度域(0-1字节)
		"movw %%ax,%2\n\t" \        //基址低字节写入描述符2-3字节
		"rorl $16,%%eax\n\t" \      //基址高字节右循环移入ax(低字节则进入高字节中)
		"movb %%al,%3\n\t" \        //基址高字中低字节一如描述符4字节
		"movb $" type ",%4\n\t" \
		"movb $0x00,%5\n\t" \
		"rorl $16,%%eax" \
		::"a" (addr),"m" (*(n)),"m" (*(n+2)),"m" (*(n+4)), \
		"m" (*(n+5)), "m" (*(n+6)), "m" (*(n+7)) \
		)
******************************************************************/

#define _set_tssldt_desc(n,addr,type) \
__asm__("movw $104,%1\n\t" \
		"movw %%ax,%2\n\t" \
		"rorl $16,%%eax\n\t" \
		"movb %%al,%3\n\t" \
		"movb $" type ",%4\n\t" \
		"movb $0x00,%5\n\t" \
		"rorl $16,%%eax" \
		::"a" (addr),"m" (*(n)),"m" (*(n+2)),"m" (*(n+4)), \
		"m" (*(n+5)), "m" (*(n+6)), "m" (*(n+7)) \
		)


/*全局表中设置任务状态段描述符*/
#define set_tss_desc(n,addr) _set_tssldt_desc(((char *) (n)),addr,"0x89")

/*全局表中设置局部表描述符*/
#define set_ldt_desc(n,addr) _set_tssldt_desc(((char *) (n)),addr,"0x82")























 
