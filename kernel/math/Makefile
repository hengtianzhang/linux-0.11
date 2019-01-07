SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

math.a:$(OBJ)
	$(AR) rcs -o $@ $^
%.o:%.c
	$(CC) $(CFLAGS) $(CDIR) -c -o $@ $<
	