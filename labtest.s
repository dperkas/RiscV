#Lab test

	.data

matric:
	.word 30
matricplus1:
	.word 0
var1:
	.word 1
array:
	.word 10,9,8,7,6,5,4,3,2,1 #array of 10 words
var2:
	.byte -1
str1:
	.string "This is a string"




	.text

	la	a0, matric
	la	a1, var1
	la	a2, array 	#gets the address of array into a2. This is called BASE address, base of the array
	la	a3, var2


prog:
	lw	s0, 0(a0)
	lw	s1, 0(a1)	#s1 gets the value of var1. a1 has the address of var1
	add	s1, s1, s0

	sw	s1, 4(a0)
	sw	s0, 0xc(a2)	#store s0 to the 4th element of array. Offset 0xc=12. 0 is first, 4 second, 8, thrid, 12 fourth. 
	

	addi	t1, a2, 0x10

	sw	t1, 0(a1)

	lb	s2, 0(a3)
	lbu	s3, 0(a3)

exit:
	addi	a7, zero, 10
	ecall

	
