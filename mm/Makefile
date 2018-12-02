AR = ar
CC = gcc
LD = ld
CFLAGE = -I../include -I../include/linux -I../include/asm
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = mm.o

$(prom):$(obj)
	as -o page.o page.s
	$(LD) -r -o $@ *.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<
clean:
	rm -f *.o *.a
