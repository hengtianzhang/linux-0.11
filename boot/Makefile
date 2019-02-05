include ../Makefile.header

LDFLAGS += -Ttext 0x0

all: bootsect.bin setup.bin head.o

bootsect.bin: bootsect.s
	$(AS) -o bootsect.o $<
	$(LD) $(LDFLAGS) -o bootsect bootsect.o
	$(OBJCOPY) -R .pdr -R .comment -R .note -S -O binary bootsect $@

setup.bin: setup.s
	$(AS) -o setup.o $<
	$(LD) $(LDFLAGS) -o setup setup.o
	$(OBJCOPY) -R .pdr -R .comment -R .note -S -O binary setup $@

head.o: head.s
	$(AS) -o $@ $<

clean:
	@rm -f bootsect.o bootsect bootsect.bin setup.o setup setup.bin head.o
