AR = ar
CC = gcc
LD = ld
CFLAGE = -I../include -I../include/linux
src = $(shell find ./ -name "*.c")
obj = $(src:%.c=%.o)
prom = kernel.a

$(prom):$(obj)
	$(AR) rcs $@ printk.o sched.o

%.o:%.c	
	$(CC) $(CFLAGE) -c -o $@ $<

clean:
	rm -f *.o *.a
