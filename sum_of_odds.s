#
#
# Sum of odd numbers in array
# Mask used: 0x00000001 with AND
#

	.data

array:
		.word 1,2,3,4,5,6,7,8,9

	.text

	la		a0, array
	li		a1, 9		# size

	add		s0, zero, zero		# index, i=0
	add		s3, zero, zero		# sum = 0
	beq		a1, zero, exit		# empty array!

loop:
	beq		a1, s0, done
	lw		s1, 0(a0)
	and		t1, s1, 0x00000001		# mask, if LSB is 1, number is odd
	addi	a0, a0, 4
	bne		t1, zero, isodd			# if s1 AND 0x1 = 0, s1 is odd
	j		loop
	

isodd:
	add		s3, s3, s1
	j		loop



done:
	addi	a7, zero, 10
	ecall
