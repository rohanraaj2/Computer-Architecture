`timescale 1ns / 1ps

module MUX(a,b,s,o);
    input [63:0] a,b;
    input s;
    output [63:0] o;
    
    assign o = (s)?a:b; // if s = 1, then a is selected. Otherwise b is selected 
    
endmodule
