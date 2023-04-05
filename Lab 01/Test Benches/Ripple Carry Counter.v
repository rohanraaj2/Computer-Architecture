`timescale 1ns / 1ps

module tb();
    RCC rc_counter(clk,reset,q);
    wire [3:0]q;
    reg clk;
    reg reset;
     

    initial    begin
        clk = 1'b0;
        reset =1'b1;
        #10 reset = 1'b0;        
       #180 reset = 1'b0;        
    end

    //running the clock here
    always
    #5 clk = ~clk;

endmodule
