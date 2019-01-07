SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

mm.o:$(OBJ) page.o
	$(LD) -m elf_i386 -r -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
	
page.o:page.S
	$(AS) -o $@ $<
