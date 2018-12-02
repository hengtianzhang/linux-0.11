CC = gcc
AR = ar
LD = ld
CFLAGE = -I../include -I../include/linux -I../include/asm
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = lib.a

$(prom):$(obj)
	$(AR) rcs -o $@  *.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a
