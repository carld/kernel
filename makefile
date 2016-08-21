
kernel:
	nasm -f elf32 boot.s -o boot.o
	gcc -m32 -c kernel.c -o kernel.o
	ld -m elf_i386 -T link.ld -o kernel boot.o kernel.o
	@echo "Now run: qemu-system-i386 -kernel kernel"
