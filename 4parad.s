

	.data

array:
	.word 1,2,3,4,5,6,7,8,9

	.text

	la	a0, array
	li	a1, 10
	li	a2, 3


	add	s0, zero, zero

loop:
	beq	s0, a1, exit_not_found
	slli	t1, s0, 2
	add	ti, t1, a0
	lw	t2, 0(t1)
	beq	t2, a2, found
	j	loop

found:
	add	s0, t2, zero

