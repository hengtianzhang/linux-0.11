SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

blk_drv.a:$(OBJ)
	$(AR) rcs -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
