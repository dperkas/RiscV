#Search in array to find the given number.
#Version with pointers, a0 is the pointer, showing in the firs
#element of the array. We just move it 4 bytes a time to "see" to
#the next element of the array. s0 is the index i and t1 is where each 
#element is temporarily "stored".
#when found, return to a0 the index, the position of the element(s0)
#when not found, write -1 in s0
#
#Note: if I wanted to store the ADDRESS of the found element in a1, I would
#just put a0 in the register of the resault.
#Thn timh tou stoixeiou tha thn edina me ena lw.

	.data

array:	.word 2 3 5 14 1

	.text
	

	la	 a0,array
	li 	 a1, 14 	# element to be found
	li	 a2, 5 		# length of array

loop:
	beq	 s0, a2, not_found	# if(i==a2), telos, den to vrikes
	lw	 t1, 0(a0)		# load first element to t1
	beq	 t1, a1, found		# if the element is =a1, we found it
	addi s0, s0, 1			# index increases one step, so 1
	addi a0, a0, 4			# pointer a increases 4 bytes, to go to the next word
	j	 loop
found:
	add	 a0, t1, zero
	j	 exit

not_found:
	addi s0, zero, -1

exit:
	addi a7, zero, 10
