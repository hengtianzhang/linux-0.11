.text
.global  _start, pg_dir, idt, gdt, tmp_floppy_area
_start:
pg_dir:
startup_32:
	movl $0x10, %eax
	movw %ax, %ds
	movw %ax, %es
	movw %ax, %fs
	movw %ax, %gs
	lss stack_start, %esp #stack_start kernel/sched.c
	
	call setup_idt #調用設置中斷描述符錶子程序
	call setup_gdt #調用設置全局描述符錶子程序
	ljmp $0x8,$1f
1:   #reload all the segment regidters
	mov $0x10, %eax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	lss stack_start, %esp
#test A20 startup
	xorl %eax, %eax
2:
	incl %eax
	movl %eax, 0x000000
	cmpl %eax, 0x100000
	je 2b
#CR0 16bit set 1 WP位 寫保護  用於禁止超級用戶程序向普通用戶的只讀葉寫操作 
#用於實現創建新進程寫時複製
#check 數學協處理器芯片是否存在
#測試方法；修改CR0 假設協處理器存在 執行一個協處理器指令 出錯則協處理器不存在
#則需要設置CR0協處理器仿真位EM（位2），并且復位協處理器存在位MP(位1)
	movl %cr0, %eax   #check math chip
	andl $0x80000011, %eax #save PG PE ET
	orl $2, %eax
	movl %eax, %cr0
	call check_x87
	jmp after_page_tables

/*
 * 依賴ET正確性性來檢測287/387是否存在
 *fninit fstsw是數學協處理器(80287/80387)的指令
 */
check_x87:
	fninit     #向協處理器發出初始化指令
	fstsw %ax  #取處理器狀態字到ax
	cmpb $0, %al #初始化后狀態字應該爲0，否則協處理器不存在
	je 1f      #存在則跳轉至1
	movl %cr0, %eax #不存在則reset MP set EM
	xorl $6, %eax
	movl %eax, %cr0
	ret
.align 4
1:
	.byte 0xDB, 0xE4 #set 80287 to protect   80387不需要
	ret

setup_idt:
	lea ignore_int, %edx     #將ignore_int的有效地址(偏移值)值 =>edx寄存器
	movl $0x00080000, %eax   #將選擇符0x0008置入eax的高16位
	movw %dx, %ax            /* selector = 0x0008 = cs */
							 #偏移值的低16位置入eax的低16位中，eax含有們描述符低4字節
	movw $0x8E00, %dx        /* interrupt gate - dpl = 0  persent*/
							#此時edx含有們描述符高4字節值
	lea idt, %edi           #idt是中斷描述符表地址
	mov $256, %ecx
rp_sidt: #設置啞中斷門描述符表 
	movl %eax, (%edi)      #將啞中斷門描述符存入表中
	movl %edx, 4(%edi)     
	addl $8, %edi    #edi指向表中下一項
	dec %ecx
	jne rp_sidt
	lidt idt_descr
	ret

setup_gdt:
	lgdt gdt_descr
	ret 

.org 0x1000   #第一張頁表
pg0:

.org 0x2000
pg1:

.org 0x3000
pg2:

.org 0x4000
pg3:

.org 0x5000 #0x5000内存數據塊開始処
/*
 * 当DMA不能访问缓冲区时， 下面的tmp_floppy_area内存块
 * 就可供软盘驱动程序访问。其地址需要对齐调整，
 * 这样就不会跨越64KB边界
 */
tmp_floppy_area:
	.fill 1024,1,0
	
	#下面入栈为跳转至init/main.c做准备
after_page_tables:
	pushl $0   #3个参数为main准备
	pushl $0
	pushl $0
	pushl $L6
	pushl $main
	jmp setup_paging
L6:
	jmp L6
	
/* This is the default interrupt "handler" :-) */
int_msg:
	.asciz "Unknown interrupt\n\r"    #定義字符串 “未知終端(回車換行)”。
.align 4
ignore_int:
	pushl %eax
	pushl %ecx
	pushl %edx
	push %ds     #16位寄存器入棧，按照32位存儲
	push %es
	push %fs

	movl $0x10, %eax #置段選擇符(使ds，es，fs指向gdt表中數據段)
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	pushl $int_msg #把調用printk函數的參數指針(地址)入棧。
	
	call printk  #kernel/printk.c
	
	popl %eax
	pop %fs
	pop %es
	pop %ds
	popl %edx
	popl %ecx
	popl %eax
	iret         
	

.align 4
setup_paging:
	#首先5页内存 1页目录 4页页表 清零
	movl $1024*5, %ecx
	xorl %eax, %eax
	xorl %edi, %edi
	cld;rep;stosl  #eax内容存到es:edi所指内存，且edi增4
				   #stosb/w/l al/ax/eax => es:edi/di
				   #cld reset df 方向标志位
	#下面4句设置页目录表中的项  0x7 表示该页存在，用户可读写
	movl $pg0+7, pg_dir
	movl $pg1+7, pg_dir+4
	movl $pg2+7, pg_dir+8
	movl $pg3+7, pg_dir+12
	
	#下面6行填写页表中所有内容，4(页表)*1024(项/页表)=4096项(0-0xfff)
	#映射物理内存4096*4kb = 16MB
	#每项内容是：当前所映射物理地址 + 该页标志(0x7)
	#使用方式从最后一个页表的最后一项开始按倒退顺序填写。一个页表的最后一项在
	#页表中的位置是1023*4 = 4092。因此最后一页的最后一项的位置是$pg3+4092
	movl $pg3+4092, %edi  #edi=>最后一页的最后一项
	movl $0xfff007, %eax  # 16MB - 4096 + 7
						  # 最后1项对应物理页面地址0xfff000，
						  # 加上标志位7，0xfff007
	std					  # 方向位置位， edi递减 4字节
1:
	stosl
	subl $0x1000, %eax    #写好一项物理地址减去4kb  0x1000
	jge 1b                #小于0 即写完
	#设置页目录表基址寄存器cr3的值，指向页目录表。cr3中保存页目录表物理地址
	xorl %eax, %eax
	movl %eax, %cr3       #物理地址0x0 页目录表
	#设置启动分页处理 CR0 PG 位31
	movl %cr0, %eax
	orl $0x80000000, %eax  #PG位set 1
	movl %eax, %cr0
	ret                   #刷新指令队列
	
.align 4 
.word 0
idt_descr:
	.word 256*8-1
	.long idt

.align 4
.word 0
gdt_descr:
	.word 256*8-1
	.long gdt

idt:
	.fill 256, 8, 0 #idt 未初始化 256項 每項8字節 填0
	
gdt:
	.quad 0x0000000000000000   #NULL
	.quad 0x00c09a0000000fff   #16MB
	.quad 0x00c0920000000fff   #16MB
	.quad 0x0000000000000000   #TEMPORARY - don't use
	.fill 252,8,0              #space for LDT's and TSS's etc
	# 0 null, 1 cs, 2 ds, 3 system call, 4 TSS0, 5 LDT0, 6 TSS1, 7 LDT1 ...
	
	
	
	
	
	
	
	
	