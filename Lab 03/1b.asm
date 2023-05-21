addi, x24, x0, 1 # case 1
addi, x25, x0, 2 # case 2
addi, x26, x0, 3 # case 3
addi, x27, x0, 4 # case 4
add, x28, x0, x19 # choosing cases
add, x29, x0, x17 # inputing b
add, x31, x0, x18 # inputing c
addi x2, x0, 2 # adding 2 to be used in case 3 and 4
addi x30, x0, 0 # for default value

beq x28, x24, Case1 # if equal, it jumps to case 1
beq x28, x25, Case2 # if equal, it jumps to case 2
beq x28, x26, Case3 # if equal, it jumps to case 3
beq x28, x27, Case4 # if equal, it jumps to case 4

Case1:
add x30, x17, x18 # adding the value in x17 and x18 and storing it in x30
beq x0, x0, Exit # Case ended

Case2:
sub x30, x17, x18 # subtracting the value in x17 and x18 and storing it in x30
beq x0, x0, Exit # Case ended

Case3:
mul x30, x17, x2 # multiplying the value in x17 by 2 and storing it in x30
beq x0, x0, Exit # Case ended

Case4:
div x30, x17, x2 # dividing the value in x17 by 2 and storing it in x30
beq x0, x0, Exit # Case ended

Exit:
