# Converts an ASCII string of a binary number to a hexadecimal string
# 
# Written by Aris Efthymiou, 13/02/2018
# 

        .data
binaryString:
        .string "00100011010001010110011110001001"
hexString:
        .zero 9  # Leave space for 8 hex digits plus '\0'

        .globl bin2hex

        .text
        la   a0, binaryString
        la   a1, hexString # Get address of output string

bin2hex:
        andi s0, a0,   0x3    # Get the 2 LSBs of initial value of a0
loop:   # Outer loop ----------
        add  s1, zero, zero
getBinDigit:   # -- Inner loop: get 4 bits (as chars)  -----------
        lbu  t0, 0(a0)
        beq  t0, zero, end  # Found the end of string
        addi t0, t0,   -48  # ASCII code for '0' is 48
        slli s1, s1,   1
        or   s1, s1,   t0
        addi a0, a0,   1
        andi t1, a0,   0x3  # Get 2 LSBs of a0
        bne  t1, s0,   getBinDigit  # If they match those of the initial value of a0,
                                    #   we've read 4 characters-bits.
        # End of inner loop --------------------------------------

        # The following instructions convert the number in s1 to a hex char
        slti t2, s1,   10  # t2 is set to 1 if s1 < 10	
        beq  t2, zero, over10
        addi t3, s1,   48  # ASCII for '0' is 48
        j    save_c
over10:
        addi t3, s1,   55 # convert to ASCII for A-F
                          # ASCII code for 'A' is 65
                          # Use 55 because t1 is over 10
save_c: # store one hex digit (in t1)
        sb   t3, 0(a1)
        addi a1, a1,   1
        j    loop
        # End of outer loop --------
end:
        # store special end of string (null) char
        sb   zero, 0(a1)

        # end the program
        addi a7, zero, 10
        ecall

