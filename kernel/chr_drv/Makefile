CC = gcc
AR = ar
LD = ld
CFLAGE =-std=gnu89 -Wall -O -fstrength-reduce -fomit-frame-pointer  -fno-stack-protector -nostdinc -I../../include -I../../include/linux -I../../include/asm -I../../include/sys
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = chr_drv.a

$(prom):$(obj)
	as -o keyboard.o keyboard.S
	$(AR) rcs -o $@  *.o
	sync
%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a
