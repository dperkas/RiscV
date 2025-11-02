        .data

array:
                .word 2,3,4,3,6,5

        .text

        la              a0, array
        li              a1, 6
        li              a2, 3           # number to find


        add             s2,zero, zero           # index i=0
        add             s0, zero, zero          # address to be stored
        beq             a1, zero, exit          # if array is empty, leave

loop:
        beq             a1, s2, exit
        slli			t0, s2, 2                # t0 = 4*i
        add             s1, a0, t0               # new &, s1=a0+(4*i)
        lw              s3, 0(s1)                # s2 is the word
        bne             s3, a2, next            # if not equal
		add				s0, s1, zero

next:
	addi				s2, s2, 1
	j					loop


exit:
        addi a7, zero, 10
        ecall


