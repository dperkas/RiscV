	.data

array:
		.word 2,34,5,1,6, 64

	.text

	la		a0, array
	li		a1, 6		# size

	add		s0, zero, zero	# max = 0
	add		s1, zero, zero	# index = 0

	beq		a1, zero, exit		# if array is empty: leave
loop:
	beq		s1, a1, exit
	slli	t0, s1, 2			# t0 = i*4
	add		a2, a0, t0			# new & is a2. a2 = a0 + &(i*4)
	lw		s2, 0(a2)
	addi	s1, s1, 1			# i++
	bge		s2, s0, newmax		# if s2 >=max, s2=newmax
	j		loop


newmax:
	add		s0, s2, zero
	j		loop




exit:
	addi	a7, zero, 10
	ecall
