# HelloWorld on RISC-V

## What is the RISC-V

RISC-V is an open standard **instruction set architecture** (ISA) based on established **reduced instruction set computer** (RISC) principles. Unlike most other ISA designs, RISC-V is provided under **royalty-free open-source licenses**. Many companies are offering or have announced RISC-V hardware; open source operating systems with RISC-V support are available, and the instruction set is supported in several popular software toolchains.

> Credit: [Wikipedia](https://en.wikipedia.org/wiki/RISC-V)

## Prerequirements

Before getting started we need to install toolchain and emulator for RISC-V.

```console
sudo apt install gcc-riscv64-linux-gnu qemu-user
```

> **Note**: Installation may be different from yours, it's depend on your systems.

## The Code

The code below print "Hello World" on console.

```assembly
.global _start

_start:
	addi	a7, zero, 64		# write syscall
	addi	a0, zero, 1			# stdout fd
	la		a1, helloworld		# load string buffer's address
	addi	a2, zero, 12		# length of the buffer
	ecall

	addi	a7, zero, 93		# exit syscall
	addi	a0, zero, 0			# exit status code
	ecall

helloworld:
	.ascii "Hello World\n"
```

## Assemble The Code

Makefile allow us to easily build source file into one easy to use file.

```console
make
```

## Execute The Code

Executable file can be run as below.

```console
./helloworld
```