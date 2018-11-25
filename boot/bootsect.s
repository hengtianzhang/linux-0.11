.code16
.section .text
SYSSIZE  = 0x3000
BOOTSEG  = 0x07c0
INITSEG  = 0x9000
SETUPSEG = 0x9020
SYSSEG   = 0x1000
ENDSEG   = SYSSEG + SYSSIZE
SETUPLEN = 1
.global _start
_start:
	movw $BOOTSEG, %ax    #bootsect加载地址 0x7c00
	movw %ax, %ds         
	movw $INITSEG, %ax    #bootsect搬运地址0x90000
	movw %ax, %es
	movw $256, %cx         #搬运256字
	sub %si, %si
	sub %di, %di
	rep 
	movsw                 #重复搬运
	jmp $INITSEG, $go     #跳转至0x9000:0000继续执行 go
go:
	movb $03, %ah       #读光标位置 0x3功能 行列位置在dx
	xor %bh, %bh        #0页
	int $0x10
	
	movw $len, %cx       #显示字符串长度
	movw $msg, %bp        #字符串起始地址
	movw $0x0007, %bx     #显示模式为普通模式
	movw $0x1301, %ax     #ah 13功能 显示字符串
	int $0x10
	
	movw %cs, %ax
	movw %ax, %ds
	movw %ax, %es
	movw %ax, %ss
	movw $0xFF00, %sp
load_setup:
	movw $0x0000, %dx        #磁头dh   dl驱动器
	movw $0x0002, %cx        #ch柱面第六位 cl高两位柱面 低六位扇区起始
	movw $0x0200, %bx		 #bx缓冲区偏移地址
	movw $SETUPLEN + 0x0200, %ax   # ah 02h功能读扇区 al读取的扇区数
	int $0x13
	jnc ok_load_setup       #cf标志 0成功  1失败
	movw $0x0000, %dx       #reset diskette
	movw $0x0000, %ax
	int $0x13
	jmp load_setup
ok_load_setup:
	#jmp $SETUPSEG, $0
	movb $0x0, %dl
	movw $0x0800, %ax
	int $0x13
	movb $0x0, %ch
	movw %cx, sectors
	movw $SYSSEG, %ax
	movw %ax, %es
	movw %cs ,%ax
	movw %ax, %ds

	call read_it
	

sread: .word 5
head:  .word 0
track: .word 0
read_it:
	movw %es, %ax
	test $0x0fff, %ax
die: jne die
	xor %bx, %bx
	
rp_read:
	movw %es, %ax
	cmpw $ENDSEG, %ax
	jb ok1_read
	ret
ok1_read:
	movw sectors, %ax
	subw sread, %ax #ax保存当前磁道剩余需要读的扇区
	movw %ax, %cx  #cx当前磁道未读扇区
	shl $9, %cx
	addw %bx, %cx #段内共需读的字节数
	
	jnc ok2_read
	je ok2_read
	xor %ax, %ax
	subw %bx, %ax
	shr $9, %ax  #ax保存当前磁道，超过64KB段界限，当前段内能读的扇区数
ok2_read:
	hlt
sectors:
	.word 0
msg:
	.ascii "Loading sysytem...\n"
	len = . - msg
.org 510
end_glag:
	.word 0xAA55
