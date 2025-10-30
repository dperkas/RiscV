


	.data

array:
	.word 1,2,3,4,5,6,7,8,9,10

	.text

	la	a0, array
	li	a1, 10
	li	a2, 3

	.prog
	
	add	s0, zero, zero

loop:
	beq	s0, a1, exit_not_found
	slli	t0, s0, 2
	add	t0, t0, a0
	lw	t1, 0(t0)
	beq	t1, a2, exit_found
	addi	s0, s0, 1
	j	loop

exit_not_found:
	addi	s0, zero, -1

exit_found:
	add	a0, s0, zero
	addi	a7, zero, 10
	ecall


