##########################################################################
#same as arraysum.s, but the lenght in .word

      .data
      
array:      .word 1,2,3,4,5
lenght:      .word 5
sum:        .word 0

      .text
      
      la a0, array      #pointer, points at the first element of the array
      la a1, sum        #where the sum will be stored, to a1 deixnei sth thesh tou sum
      la a2, lenght
      
      
      addi t0 zero 0      #index metritis
      addi s0 zero 0      #initialize sum
      
      lw s1 0(a2)         #load in s1 the lenght of the array
loop:
      lw   t2 0(a0)      #diabase to stoixeio pou deixnei o pointer a(valto sto t2)
      add  s0 s0 t2      #prosthese to ston s0(krataei to athroisma)
      addi a0 a0 4       #phgaine sto epomeno stoixeio
      addi t0 t0 1       #metriths +1 mexri na paei sto 5
      blt  t0 s1 loop    #(if t0<s1)oso to t0 den exei "ftasei" to t1, dhladh to telos, kane to loop
      
      sw s0 0(a1)        #apothkeuse to to athroisma s0 sto a1
      
      addi a7 zero 10
      ecall

      
      