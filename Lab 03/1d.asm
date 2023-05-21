addi x22, x0, 0 #variable i in x22
li x4, 0x200 # loading base address of array in x4
addi x9, x0, 9 # saving constant value 9

loop: slli x11, x22, 2 # i * 4 by moving i two units left
add x11, x11, x4
sw x22, 0(x11)

beq x22, x9, exit # if i has run 10 iterations, we jump to exit
addi x22, x22, 1 # i = i + 1 
beq x0, x0, loop # jumping back to loop
exit:

addi x22, x0, 0 # pushing i in x22
addi x23, x0, 0 # pushing sum in x23
li x4, 0x200

loop2: slli x11, x22, 2 # i * 4 by moving two units left
add x11, x11, x4
lw x2, 0(x11)
add x23, x23, x2
beq x22, x9, exit2 # loop ends after 10 iterations
addi x22, x22, 1
beq x0, x0, loop2

exit2:        
