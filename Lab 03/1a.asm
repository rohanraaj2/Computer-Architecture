# assuming that variables f to j are in registers x19-x23

    bne x22, x23, Else # checking if the values in x22 and x23 are not equal
    add x19, x20, x21 # adding the values in x20 and x21 and storing it in x19
    beq x0, x0, Exit # un conditional jump (checking if the values are equal)
Else: sub x19, x20, x21 # subtracting the values in x20 and x21 and storing it in x19
Exit: # the code after if/else goes here
