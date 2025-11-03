	.data

array:
		.word 1,0,-1,12,0,1,4

	.text

	la		a0, array
	li		a1, 7
	li		a2, 1

	jal		myprog

	addi	a7, zero, 10
	ecall


myprog:
		
	add		s0, zero, zero		# index = 0 
	add		s1, zero, zero		# positive counter
	add		s2, zero, zero		# negative counter

	#beq	a1, zero, exit

loop:
	beq		s0, a1, exit		# if end of array, leave
	slli	t0, s0, 2			# t0 = i*4
	add		t2, t0, a0			# t2 new address, t2 = a0 + i*4
	lw		t1, 0(t2)
	bge		t1, a2, greater	
	addi	s2, s2, 1			# if not, negative counter++
	addi	s0, s0, 1
	j		loop


greater:
	addi	s1, s1, 1

next:
	addi	s0, s0, 1
	j		loop

exit:
	add		a0, s1, zero
	add		a1, s2, zero

	jr		ra
