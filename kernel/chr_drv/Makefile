CC = gcc
AR = ar
LD = ld
CPP = gcc -E -nostdinc -I../../include -I../../include/linux -I../../include/asm -I../../include/sys
CFLAGE =-std=gnu89 -Wall -O -fstrength-reduce -fomit-frame-pointer  -fno-stack-protector -nostdinc -I../../include -I../../include/linux -I../../include/asm -I../../include/sys
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = chr_drv.a

$(prom):$(obj)
	$(CPP) -traditional keyboard.S -o cppkeyboard.s
	as -o keyboard.o cppkeyboard.s
	as -o rs_io.o rs_io.s
	$(AR) rcs -o $@  *.o
	sync
%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a cppkeyboard.s
