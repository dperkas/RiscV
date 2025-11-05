	.data

array:
		word 3,3,5,5,5,2

	.text

	la		a0, array
	li		a1, 5

	jal		routine
	addi	a7, zero, 10
	ecall

#######auta edine ^ ###########

routine:
	add		s0, zero, zero		# index = 0
	add		s2, zero, zero 		# count = 0
	
	beq		a1, zero, exit		# if array is empty, leave

loop:
	beq		s0, a1, exit		# end of array, exit
	slli	t0, s0, 2			# t0 = i*4
	add		t1, a0, t0			# t1 is the new &, t1 = a0 + (i*4)
	lw		s1, 0(t1)
	lw		s2, 4(t1)
	beq		s1, s2, count
	addi	s0, s0, 1
	j		loop

count:
	addi	s2, s2, 1
	addi	s0, s0, 1
	j		loop


###########edw teleiwne##########
exit:
	add		a0, s2, zero	# result is stored in a0
		
	jr ra
	
	
