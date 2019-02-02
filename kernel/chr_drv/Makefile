SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))


chr_drv.a:$(OBJ) keyboard.o rs_io.o
	$(AR) rcs -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
keyboard.o:keyboard.S
	$(CPP) -o cppkeyboard.s $<
	$(AS) -o $@ cppkeyboard.s
	@rm cppkeyboard.s
rs_io.o:rs_io.s
	$(AS) -o $@ $<
	
