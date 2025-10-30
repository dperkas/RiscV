#
#
# Pointers Version
#
#

	.data

string1:
		.string "set"
string2:
		.string 100		# empty string 100 bytes to copy

	.text

	la		a0, string1
	la		a1, string2


loop:
	lbu		s1, 0(a0)
	sb		s1, 0(a1)
	beq		s1, zero, exit	# reached '/0'=end of the string
	addi	a0, a0, 1		#
	addi	a1, a1, 1		# PROSOXH!!! &(+1) !!!THELW TO EPOMENO BYTE, OXI LEKSH!!!!
	j		loop			#


exit:
	addi	a7, zero, 10
	ecall
