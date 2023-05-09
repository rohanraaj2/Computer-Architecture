`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 04:30:02 PM
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test();
    
    reg [63:0] a,b;
    reg s;
    wire [63:0] o;
    
    MUX a1(a,b,s,o);
    
    initial
    begin
        a = 64'hFFFF_AAAA_BBBB_CCCC;
        b = 64'hFFFF_FFFF_DDDD_EEEE;
        s = 0;
        #100
        s = 1;
    end
endmodule
