          .data
string1: 
          .string "This is a 0 string!"
string2: 
          .zero 100 # clear 100 bytes for string destination

    .text
    
    la   a0, string1
    la   a1, string2
    j    loop1    # Skip to 2nd version below. Remove to try 1st version
    
    # version1 :
    # i = 0
    # do {
    #   a1[i] = a0[i];
    # } while (a0[i++] != 0)
    add  s0, zero, zero  # i = 0
loop:
    add  t0, a0, s0  # &(a0[i])
    lbu  t0, 0(t0)
    add  t2, a1, s0  # &(a1[i])
    sb   t0, 0(t2)
    beq  t0, zero, exit
    addi s0, s0, 1
    j    loop
    
    
    # version 2:
    # while (*a1++ = *a0++)
    #    ;
loop1:
    lbu  t0, 0(a0)
    sb   t0, 0(a1)
    addi a0, a0, 1
    addi a1, a1, 1
    bne  t0, zero, loop1
    
exit:
    addi a7, zero, 10
    ecall 
    
