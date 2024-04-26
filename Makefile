default:
	rm -rf helloworld
	riscv64-linux-gnu-as helloworld.s -o helloworld.o
	riscv64-linux-gnu-gcc -o helloworld.bin helloworld.o -nostdlib -static