CC = gcc
LD = ld
GCCVERSION = $(shell gcc --version | grep ^gcc | sed 's/^.* //g')
OSVERSION = $(shell getconf LONG_BIT)
CFLAGE =-std=gnu89 -Wall -O -fstrength-reduce -fomit-frame-pointer  -fno-stack-protector  -nostdinc -I./include -I./include/linux -I./include/asm -I./include/sys
all:Image
KERNEL = kernel/kernel.o
MM = mm/mm.o
FS = fs/fs.o
LIB = lib/lib.a
MATH = kernel/math/math.a
DRIVER = kernel/blk_drv/blk_drv.a

Image:bootsect setup system
	@dd if=boot/bootsect of=tools/a.img bs=512 count=1 seek=0 conv=notrunc
	@dd if=boot/setup of=tools/a.img bs=512 count=4 seek=1 conv=notrunc
	@dd if=system of=tools/a.img bs=512  seek=5 conv=notrunc
	@echo "\nmake done!\n"

bootsect:boot/bootsect.s
	as -o boot/bootsect.o boot/bootsect.s
	ld -Ttext 0x0 --oformat binary -o boot/bootsect boot/bootsect.o
setup:boot/setup.s
	as -o boot/setup.o boot/setup.s
	ld -Ttext 0x0 --oformat binary -o boot/setup boot/setup.o
system:boot/head.o
	@cd lib;make
	@cd kernel;make
	@cd mm;make
	@cd fs;make
	$(CC) $(CFLAGE) -c -o init/main.o init/main.c
	$(LD)  -nostdinc -M -Ttext 0x0 boot/head.o init/main.o $(MM)  $(KERNEL) \
	$(LIB) $(FS) $(MATH) $(DRIVER) --oformat binary -o system > system.map
	objdump -D -b binary -m i386 system > system.list

main.o:init/main.o
	$(CC) $(CFLAGE) -c -o init/main.o init/main.c

gcc_check:
	@if [ "5.4.0" > $(GCCVERSION) ]; then echo "******check failed*******!\n\
GCC version requires at least GCC 5.4.0,but this \
is GCC $(GCCVERSION)";else echo \
"****check sucessful****\nGCC version is gcc $(GCCVERSION)";fi
	@rm -rf $(GCCVERSION)
clean:
	@(cd kernel;make clean)
	@(cd mm;make clean)
	@(cd lib;make clean)
	@(cd fs;make clean)
	rm -f boot/bootsect  boot/setup  boot/*.o init/main.o init/main.s system \
	system.list system.map
	@echo "\nrm -rf obj file done!\n"
