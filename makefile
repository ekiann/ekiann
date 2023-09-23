all:
	gcc -g -ggdb -c -o test.o test.c 
	nasm -g -f elf64 asm1.asm -l asm1.lst -F dwarf
	gcc -o test test.o asm1.o -fno-pie -no-pie
