SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

lib.a:$(OBJ)
	$(AR) rcs -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
	