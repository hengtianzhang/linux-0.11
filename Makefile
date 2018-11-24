all:Image

Image:bootsect setup
	dd if=bootsect of=a.img bs=512 count=1 seek=0 conv=notrunc
	dd if=setup of=a.img bs=512 count=1 seek=1 conv=notrunc

bootsect:bootsect.s
	as -o bootsect.o bootsect.s
	ld -Ttext 0x0 --oformat binary -o bootsect bootsect.o
setup:setup.s
	as -o setup.o setup.s
	ld -Ttext 0x0 --oformat binary -o setup setup.o
clean:
	rm bootsect bootsect.o setup setup.o
