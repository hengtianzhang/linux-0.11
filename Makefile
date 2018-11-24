all:Image

Image:bootsect setup
	dd if=boot/bootsect of=tools/a.img bs=512 count=1 seek=0 conv=notrunc
	dd if=boot/setup of=tools/a.img bs=512 count=1 seek=1 conv=notrunc

bootsect:boot/bootsect.s
	as -o boot/bootsect.o boot/bootsect.s
	ld -Ttext 0x0 --oformat binary -o boot/bootsect boot/bootsect.o
setup:boot/setup.s
	as -o boot/setup.o boot/setup.s
	ld -Ttext 0x0 --oformat binary -o boot/setup boot/setup.o
clean:
	rm -f boot/bootsect boot/bootsect.o boot/setup boot/setup.o
