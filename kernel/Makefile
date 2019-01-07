SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

kernel.o:$(OBJ) asm.o system_call.o
	$(LD) -m elf_i386 -r -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
	
asm.o:asm.S
	$(AS) -o $@ $<
system_call.o:system_call.S
	$(AS) -o $@ $<
