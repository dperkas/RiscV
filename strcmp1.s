	.data

string1:
		.string "prwto"
string2:
		.string "deut"

	.text

	la		a0, string1
	la		a1, string2


loop:
	lbu		s1, 0(a0)
	lbu		s2, 0(a1)
	bne		s1, s2, exit
	beq		s1, zero, exit
next:
	addi	a0, a0, 1		# XARAKTHRAS, 1 BYTEEEEEEEEEE
	addi	a1, a1, 1		
	j		loop

exit:
	addi	a7, zero, 10
	ecall
