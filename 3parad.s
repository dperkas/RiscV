

################lab2#####################

	.data

array:
	.word 1,2,3,4,5,6,7,8,9
	
	.text

	la	a0, array
	li	a1, 10
	li	a2, 3

	add	s0, zero, zero
	add	t2, zero, zero

loop:
	beq	t2, a1, exit
	slli	t1, t2, 2
	add	t1, t1, a0
	lw	t3, 0(t1)
	bne	t3, a2, next
	add	s0, t1, zero

next:
	addi	t2, t2, 1
	j	loop

exit:
	addi	a7, zero, 10
	ecall


