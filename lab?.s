
          .data
	  array:   .word 10, 3, -10, 234, 22, 5


	           .text

		       la a0, array   # address of array
		           li a1, 6       # number of array elements
			       li a2, 22      # the number to find

			           # Search in array (a0 - address, a1-size) and return the array position of a number (a2)
				       #  return -1, if not found.
				           #  return value should be in a0

					       # uncomment to try the pointer version
					           # j pointerVersion:

						           # Rough algorithm. Not directly translated to assembly
							       # s0 = 0;
							           # while (s0 < a1) {
								       #    if a0[s0] == a2
								           #       breakd
									       #    s0 = s0 + 1
									           # }
										       #
										           # if s0 == a1
											       #    s0 = -1
											           # a0 = s0

												       add  s0, zero, zero
												       loop:
												           beq  s0, a1, exit_not_found1
													       # t0 = a0+4*i
													           slli t0, s0, 2
														       add  t0, t0, a0
														           lw   t1, 0(t0)
															       beq  t1, a2, exit_found
															           addi s0, s0, 1
																       j    loop
																       exit_not_found:
																           addi s0, zero, -1
																	   exit_found:
																	       add  a0, s0, zero   # move result to a0

																		       addi a7, zero, 10
																		           ecall

																			       # version with pointers
																			       pointerVersion:
																			           add  s0, zero, zero
																				   loop1:
																				       beq  s0, a1, exit_not_found1
																				           lw   t1, 0(a0)
																					       beq  t1, a2, exit_found1
																					           addi s0, s0, 1
																						       addi a0, a0, 4
																						           j    loop1
																							   exit_not_found1:
																							       addi  s0, zero, -1
																							       exit_found1:
																							           add   a0, s0, zero   # move result to a0

																								           addi  a7, zero, 10
																									       ecall



																											  
