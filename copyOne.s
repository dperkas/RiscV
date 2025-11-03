#
# Find number in array pointers version

	.data

array:
		.word 2,5,1,3,7

	.text

	la		a0, array
	li		a1, 5		# array lenght !!!!! LOAD IMMEDIATE
	li		a2, 1		# number to be found !!!!! LOAD IMMEDIATE PROSOXH!!!!!!

	add		s0, zero, zero

loop:
	beq		s0, a1, not_found
	lw		s1, 0(a0)
	beq		s1, a2, found
	addi	a0, a0, 4		# pane sto epomeno, +4 giati einai lekseis
	addi	s0, s0, 1		# PROSOXH, KAI TON POINTER TON AUKSANW GIA NA KSERW POTE TELEIWSE O PINAKAS
	j		loop



found:
			kane kati
	j		exit

not_found:
	addi	kati se kati
	j		exit		# DEN XREIAZETAI, meta to not_found paei sto exit


exit:
	klasika
