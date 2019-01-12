.code16
INITSEG  = 0x9000
SYSSEG   = 0x1000
SETUPSEG = 0x9020
.global _start, begtext, begdata, begbss, endtext, enddata, endbss
.section .text
begtext:
.data
begdata:
.bss
begbss:
.text
_start:
	movw %cs, %ax
	movw %ax, %ds
	movw %ax, %es

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movw $INITSEG, %ax
	movw %ax, %ds
	movb $0x03, %ah
	xor %bh, %bh
	int $0x10
	movw %dx, 0  #当前行号
	
	movb $0x88, %ah
	int $0x15
	movw %ax, 2  #从1MB开始 拓展内存大小 单位KB
	
	movb $0x0f, %ah
	int $0x10
	movw %bx, 4 #当前页 单位字
	movw %ax, 6 #显示模式  7字符列数
	
	movb $0x12, %ah
	movb $0x10, %bl
	int $0x10
	movw %ax, 8  #??
	movw %bx, 10 #0x9000A=安装的显示内存，0x9000B=显示状态(彩色，单色)
	movw %cx, 12 #0x9000C=显示卡特性参数
	
	
	#get硬盘参数 hd0
	#中断向量0x41的向量值第一个硬盘表首地址
	#0x46第二个硬盘表首地址
	#表长16字节0x10 0x90080存放第一个硬盘表
	#0x90090存放第二个

	#GET hd0
	movw $0x0000, %ax
	movw %ax, %ds
	ldsw 4*0x41, %si
	movw $INITSEG, %ax
	movw %ax, %es
	movw $0x0080, %di
	movw $0x10, %cx
	rep
	movsb


	#GET hd1
	movw $0x0000, %ax
	movw %ax, %ds
	ldsw 4*0x46, %si
	movw $INITSEG, %ax
	movw %ax, %es
	movw $0x0090, %di
	movw $0x10, %cx
	rep
	movsb

	#check that there IS a hd1
	#利用BIOS中断0x13取盘类型功能，功能号ah=0x15
	#输入dl=驱动号(0x8x是硬盘，0x80指第一个硬盘，0x81指第二个)
	#输出 ah=类型码 00没有这个硬盘 CF置位      
	#01是软驱 02是软驱或其他可移动设备 03是硬盘
	movw $0x1500, %ax
	movb $0x81, %dl
	int $0x13
	jc no_disk1
	je is_disk1
no_disk1:
	movw $INITSEG, %ax
	movw %ax, %es
	movw $0x0090, %di
	movw $0x10, %cx
	movw $0x00, %ax
	rep
	stosb
is_disk1:
	#now move to protected mode ...
	cli
	movw $0x0000, %ax
	cld
do_move:
	movw %ax, %es
	addw $0x1000, %ax
	cmpw $0x9000, %ax
	jz end_move
	movw %ax, %ds
	subw %di, %di
	subw %si, %si
	movw $0x8000, %cx
	rep
	movsw
	jmp do_move
end_move:
	movw $SETUPSEG, %ax
	movw %ax, %ds
	lidt idt_48
	lgdt gdt_48
	
	call empty_8042
	movb $0xD1, %al #0XD1命令码 表示要写数据到8042的P2端口
	outb %al, $0x64 # P2端口位1用于开A20线， 数据写到0x60口
	
	call empty_8042
	movb $0xDF, %al  #A20 on 
	outb %al, $0x60
	call empty_8042 #爲空表示A20通
	
	#主芯片端口0x20-0x21 從芯片端口0xA0-0xA1 輸出值0x11表示初始化命令開始，
	#ICW1命令字，表示邊沿出發，多片8259級連，最後要發送ICW4命令字
	movb $0x11, %al
	outb %al, $0x20
	.word 0x00eb, 0x00eb
	outb %al, $0xA0
	.word 0x00eb, 0x00eb
	#linux系統硬件中斷號設置成0x20開始
	movb $0x20, %al
	outb %al, $0x21
	.word 0x00eb, 0x00eb
	movb $0x28, %al
	outb %al, $0xA1
	.word 0x00eb, 0x00eb
	movb $0x04, %al
	outb %al, $0x21
	
	
	.word 0x00eb, 0x00eb
	movb $0x02, %al
	out %al, $0xA1
	
	.word 0x00eb, 0x00eb
	movb $0x01, %al
	outb %al, $0x21
	
	
	.word 0x00eb, 0x00eb
	outb %al, $0xA1
	.word 0x00eb, 0x00eb
	movb $0xFF, %al
	outb %al, $0x21
	.word 0x00eb, 0x00eb
	outb %al, $0xA1
	
	movw $0x0001, %ax #保護模式PE位
	lmsw %ax   #兼容286cpu 加載機器狀態字 cr0
	jmp $8, $0
empty_8042:  #缓冲区为空 l=0 才能对其写命令
	.word 0x00eb, 0x00eb 
	inb $0x64, %al  #8042芯片 状态端口 读AT键盘控制器状态寄存器
	test $2, %al #输入缓冲区是否为空 测试位1,输入缓冲区满？
	jnz empty_8042
	ret

gdt:
	#第一個描述符 NULL
	.word 0, 0, 0, 0 
	#内核代碼段描述符
	.word 0x07FF  #段限長 8MB
	.word 0x0000  #基地址 0
	.word 0x9A00  #代碼段 只讀 可執行
	.word 0x00C0  #顆粒度4096 32位模式
	
	#内核數據段描述符
	.word 0x07FF   #段限長 8MB
	.word 0x0000   #基地址 0
	.word 0x9200   #數據段可讀可寫
	.word 0x00C0   #顆粒度為 4096 32位模式
	
idt_48:
	.word 0     #idt限長 0
	.word 0, 0  #idt基地址 0
gdt_48:
	.word 0x800 #gdt限長 2048 / 8 256個
	.word 512 + gdt, 0x9
msg:
	.ascii "Enter the setup module... :)\n\r"
	len = . - msg

.text
endtext:
.data
enddata:
.bss
endbss:
