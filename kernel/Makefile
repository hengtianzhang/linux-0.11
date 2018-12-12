CC = gcc
AR = ar
LD = ld
CFLAGE = -I../include -I../include/linux -I../include/asm -I./include/sys
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = kernel.o

$(prom):$(obj)
	$(LD) -r -o $@  *.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a
