addi x10, x0, 7 # initializing v[] with value 7 
addi x11, x0, 4 # initializing k with value 4

sw x10,0(x6) # storing value of x10 in array[0]
sw x11,4(x6) # storing value of x11 in array[1]

jal x1,swap # jumps to swap function

swap:

addi sp, sp, -12 # reserving space in stack
sw x10, 8(sp) # storing value of x10 in stack [3]
sw x11, 4(sp) # storing value of x11 in stack [2]
sw x6, 0(sp) # storing value of x6 in stack [1]

slli x6, x11, 2 # shifting 2 units to the left
add x6, x10, x6 # adding the value of v[] to x6

lw x5,0(x6) # loading the value in x5 from array[0]
lw x7, 4(x6) # loading the value in x7 from array[1]

sw x7,0(x6) # storing value of x7 in array[0]
sw x5, 4(x6) # storing value of x5 in array[1]

# Releasing the stack
lw x6,0(sp)
lw x11, 4(sp)
lw x10, 8(sp)
addi sp, sp, 12
