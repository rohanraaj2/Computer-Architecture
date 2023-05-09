addi x1,x1, 1 # adding 1 and the value in x1 and storing it in x1
addi x9,x9, 2 # adding 2 and the value in x9 and storing it in x9
addi x10,x10, 3 # adding 3 and the value in x10 and storing it in x10
addi x4,x4, 4 # adding 4 and the value in x4 and storing it in x4
addi x5,x5, 1 # adding 1 and the value in x5 and storing it in x5
addi x6,x6, 2 # adding 2 and the value in x6 and storing it in x6
addi x7,x7, 3 # adding 3 and the value in x7 and storing it in x7
addi x8,x8, 4 # adding 4 and the value in x8 and storing it in x8

sw x1, 0x100(zero) # storing the value in x1 in memory 0x100
sw x9, 0x101(zero) # storing the value in x2 in memory 0x101
sw x10, 0x102(zero) # storing the value in x3 in memory 0x102
sw x4, 0x103(zero) # storing the value in x4 in memory 0x103

sw x5, 0x200(zero) # storing the value in x5 in memory 0x200
sw x6, 0x201(zero) # storing the value in x6 in memory 0x201
sw x7, 0x202(zero) # storing the value in x7 in memory 0x202
sw x8, 0x203(zero) # storing the value in x8 in memory 0x203

lbu x11, 0x100(zero) # loading the value in x11 in the memory 0x100
lbu x12, 0x101(zero) # loading the value in x12 in the memory 0x101
lbu x13, 0x102(zero) # loading the value in x13 in the memory 0x102
lbu x14, 0x103(zero) # loading the value in x14 in the memory 0x103

lbu x15, 0x200(zero) # loading the value in x15 in the memory 0x200
lbu x16, 0x201(zero) # loading the value in x16 in the memory 0x201
lbu x17, 0x202(zero) # loading the value in x17 in the memory 0x202
lbu x18, 0x203(zero) # loading the value in x18 in the memory 0x203

add x20, x11,x15 # adding the value in x15 and the value in x11 and storing it in x20
add x21, x12,x16 # adding the value in x16 and the value in x12 and storing it in x21
add x22, x13,x17 # adding the value in x17 and the value in x13 and storing it in x17
add x23, x14,x18 # adding the value in x18 and the value in x14 and storing it in x18

sw x20, 0x300(zero) # storing the value in x20 in memory 0x300
sw x21, 0x301(zero) # storing the value in x21 in memory 0x301
sw x22, 0x302(zero) # storing the value in x22 in memory 0x302
sw x23, 0x303(zero) # storing the value in x23 in memory 0x303

# Explanation: We are implementing iteration without the usage of for loop. We are repeating similar instructions, storing values in an array.

