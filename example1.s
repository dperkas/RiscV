      .data

num1:      .word 7
num2:      .word 4
sum:      .word 0

      .text

      la      a0, num1
      la      a1, num2
      la      a2, sum
      
      
      lw      s0, 0(a0)
      lw      s1, 0(a1)

      add       s2, zero, zero      #don't need to initialize, it will just take tha new value   
      add       s2, s0, s1
      sw        s2, 0(a2)  
      
      
      addi a7, zero, 10
      ecall