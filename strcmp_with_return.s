
        .data

string1:
                .string "prwto"
string2:
                .string "deut"

        .text

        la       a0, string1
        la       a1, string2

        add      s0, zero, zero          # result

loop:
        lbu		s1, 0(a0)
        lbu		s2, 0(a1)
        bne		s1, s2, not_equal		# if bytes not equal
        beq		s1, zero, exit			# if end of string1
next:
        addi	a0, a0, 1               # XARAKTHRAS, 1 BYTEEEEEEEEEE
        addi	a1, a1, 1
        j		loop



not_equal:
		addi	s0, zero, 1

exit:
        addi	a7, zero, 10
        ecall

