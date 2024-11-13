bootloader = bootloader.asm
floppy = floppy.img
size = 2880 

.PHONY: assemble setup run

assemble: $(bootloader)
	@echo "Assembling bootloader..."
	nasm -f bin -o bootloader.bin $(bootloader)

setup: $ bootloader.bin
	@echo "Creating and setting up floppy image..."
	dd if=/dev/zero of=$(floppy) bs=512 count=$(size)
	dd if=bootloader.bin of=$(floppy) bs=512 seek=0 conv=notrunc

run:
	@echo "Running bootloader in QEMU..."
	qemu-system-x86_64 -drive file=$(floppy),format=raw,media=disk
     
clean :
	rm $(floppy) 


