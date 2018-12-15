CC = gcc
AR = ar
LD = ld
CFLAGE =-std=gnu89 -Wall -O -fstrength-reduce -fomit-frame-pointer  -fno-stack-protector -nostdinc -I../include -I../include/linux -I../include/asm -I../include/sys
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = kernel.o

$(prom):$(obj)
	@cd math;make
	@cd blk_drv;make
	as -o asm.o asm.s
	as -o system_call.o system_call.s
	$(LD) -r -o $@  *.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	@cd math;make clean
	@cd blk_drv;make clean
	rm -f *.o *.a
