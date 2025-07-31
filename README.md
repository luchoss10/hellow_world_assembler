# Hellow World in Assembly Language

## This is a simple "Hello, World!" program written in x86-64 assembly language using NASM syntax.
### Install NASM and LD
To run this program, you need to have NASM (Netwide Assembler) and LD (the GNU linker) installed on your system. You can install them using your package manager. For example, on Ubuntu, you can use:

```bash
sudo apt-get install nasm binutils
```
### How to Compile and Run 

1. Compile the assembly code:
```bash
nasm -f elf64 holamundo.asm -o hello.o
```
2. Link the object file to create an executable:
```bash
ld -s -o hello hello.o
```

3. Run the executable:
```bash
./hello
```
