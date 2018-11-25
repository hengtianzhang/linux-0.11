.code16
.section .text
.global _start
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
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10
	
	movb $03, %ah
	xor %bh, %bh
	int $0x10
	movb $0x00, %dl
	movw $len, %cx
	movw $msg, %bp
	movw $0x0007, %bx
	movw $0x1301, %ax
	int $0x10

1:
	jmp 1b
msg:
	.ascii "Rloading system module... :)\n"
	len = . - msg
