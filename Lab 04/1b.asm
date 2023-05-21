addi sp, sp, -12 # adjust stack to make room for 3 items
sw, x5, 8(sp) # save register  x5 for use afterwards
sw, x6, 4(sp) # save register  x6 for use afterwards
sw, x20, 0(sp) # save register  x20 for use afterwards

jal x1, function # calls the function named sum
addi, x11, x20, 0 # moving the value stored in x20 to x11
lw x20, 0(sp) # loading value in x20 to 1st memory in sp, i.e. x5
lw x6, 4(sp) # loading value in x20 to 1st memory in sp, i.e. x5
lw x5, 8(sp) # loading value in x20 to 1st memory in sp, i.e. x5
addi sp, sp, +12 # adjust stack to make room for 3 items

li x10,1 # loads the value 1 into register x10

ecall 
j exit # jumps to exit

function:
add x5, x10, x11 # register x5 contains g + h
add x6, x12, x13 # register x6 contains i + j
sub x20, x5, x6 # f = x5 - x6, which is (g + h) - (i + j)

jalr x0,0(x1)
exit: # program ends
