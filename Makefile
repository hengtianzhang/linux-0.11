CC = gcc
LD = ld
CFLAGE = -I./include -I./include/linux -I./include/asm
all:Image
KERNEL = kernel/kernel.o
MM = mm/mm.o
LIB = lib/lib.a
Image:bootsect setup system
	dd if=boot/bootsect of=tools/a.img bs=512 count=1 seek=0 conv=notrunc
	dd if=boot/setup of=tools/a.img bs=512 count=4 seek=1 conv=notrunc
	dd if=system of=tools/a.img bs=512  seek=5 conv=notrunc

bootsect:boot/bootsect.s
	as -o boot/bootsect.o boot/bootsect.s
	ld -Ttext 0x0 --oformat binary -o boot/bootsect boot/bootsect.o
setup:boot/setup.s
	as -o boot/setup.o boot/setup.s
	ld -Ttext 0x0 --oformat binary -o boot/setup boot/setup.o
system:boot/head.o
	cd lib;make
	cd kernel;make
	cd mm;make
	$(CC) $(CFLAGE) -c -o init/main.o init/main.c
	$(LD) -Ttext 0x0 boot/head.o init/main.o $(MM)  $(KERNEL) \
    $(LIB) --oformat binary -o system
	objdump -D -b binary -m i386 system > system.list

main.o:init/main.o
	$(CC) $(CFLAGE) -c -o init/main.o init/main.c

clean:
	(cd kernel;make clean)
	(cd mm;make clean)
	(cd lib;make clean)
	rm -f boot/bootsect  boot/setup  boot/*.o init/main.o init/main.s system \
	system.list
