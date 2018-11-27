CC = gcc
LD = ld
all:Image

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
	$(CC)  -c -o init/main.o init/main.c
	$(LD) -Ttext 0x0 boot/head.o init/main.o --oformat binary -o system
	objdump -D -b binary -m i386 system > system.list
head.o:boot/head.s
	as -o boot/head.o boot/head.s
clean:
	rm -f boot/bootsect  boot/setup  boot/*.o init/main.o init/main.s system \
	system.list
