Loop: slli x10, x22, 2 # Temp reg x10 = i * 4
    add x10, x10, x25 # x10 = address of save[i]
    lw x9, 0(x10) # Temp reg x9 = save[i]
    bne x9, x24, Exit # go to Exit if save[i] != k
    addi x22, x22, 1 # i = i + 1
    beq x0, x0, Loop # go to Loop
Exit:
