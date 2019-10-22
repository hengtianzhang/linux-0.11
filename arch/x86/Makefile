
head-y := arch/x86/kernel/head.o
core-y += arch/x86/kernel/
ifndef CONFIG_BIT64
	ARCH_CFLAGS += -m32 -O0
	ARCH_AFLAGS += -m32
endif
ARCH_CFLAGS += -Wno-builtin-declaration-mismatch
LDFLAGS_$(project) += -Ttext 0x0 -e _start 	-M
KBUILD_LDFLAGS += -m elf_i386
