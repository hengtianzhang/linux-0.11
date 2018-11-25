.text
.global _start, main
_start:
	movl $0x10, %eax
	mov %ax, %ds
	jmp main
