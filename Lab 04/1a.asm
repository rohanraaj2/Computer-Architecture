addi x10,x0,12 # intializing a with value 12
addi x11,x0,12 # intializing b with value 12
jal x1,sum #calls the function named sum 
addi x11,x10,0 # transferring the value in x10 to x11 so we can print it
li x10,1 # loads the value 1 into register x10
ecall 
j exit #jumps to exit
sum: # sum function begins
add x10,x11,x10 # values in x10 (which is a) and x11 (which is b) are added and stored in x10 
jalr x0,0(x1) 
exit: # program ends
