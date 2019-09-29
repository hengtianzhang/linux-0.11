

head-y := arch/x86/kernel/head.o
core-y += arch/x86/kernel/

ifndef CONFIG_BIT64
	KBUILD_CFLAGS += -m32
	KBUILD_AFLAGS += -m32
endif
KBUILD_CFLAGS += -Wno-builtin-declaration-mismatch
