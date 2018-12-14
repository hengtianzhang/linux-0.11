CC = gcc
AR = ar
LD = ld
CFLAGE =-std=gnu99 -fno-stack-protector  -I../include -I../include/linux -I../include/asm -I./include/sys
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = math.a

$(prom):$(obj)
	$(AR) rcs -o $@  *.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a
