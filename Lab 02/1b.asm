sub x1, x2, x3 # a−d
sub x4, x5, x2 # (b−a )
add x6, x1, x4 #  ( a−d )+(b−a )
add x7, x6, x3 # ( ( a−d )+(b−a ) )+d
addi x8, x7, -55 # ( ( ( a−d )+(b−a ) )+d )−c
