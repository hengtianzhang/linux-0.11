.text
.global main, _start
_start:
startup_32:
	movl $0x10, %eax
	jmp main