      .data
      
array:      .word 1,2,3,4,5
sum:        .word 0

      .text
      
      la a0, array      #pointer, points at the first element of the array
      la a1, sum        #where the sum will be stored, to a1 deixnei sth thesh tou sum
      
      
      addi t0 zero 0      #index metritis
      addi t1 zero 5      #number of elements(to know when to stop)
      addi s0 zero 0      #initialize sum
      
loop:
      lw   t2 0(a0)      #diabase to stoixeio pou deixnei o pointer a(valto sto t2)
      add  s0 s0 t2      #prosthese to ston s0(krataei to athroisma)
      addi a0 a0 4       #phgaine sto epomeno stoixeio
      addi t0 t0 1       #metriths +1 mexri na paei sto 5
      blt  t0 t1 loop    #(if t0<t1)oso to t0 den exei "ftasei" to t1, dhladh to telos, kane to loop
      
      sw s0 0(a1)        #apothkeuse to to athroisma s0 sto a1
      
      addi a7 zero 10
      ecall

      
      