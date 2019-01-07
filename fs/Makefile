
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

fs.o:$(OBJ)
	$(LD) -m elf_i386 -r -o $@ $^

%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<