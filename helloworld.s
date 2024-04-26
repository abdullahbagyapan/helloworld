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
