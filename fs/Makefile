CC = gcc
AR = ar
LD = ld
CFLAGE =-std=gnu89 -Wall -O -fstrength-reduce -fomit-frame-pointer  -nostdinc  -I../include -I../include/linux -I../include/asm -I../include/sys
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = fs.o

$(prom):$(obj)
	$(LD) -r -o $@  *.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a
