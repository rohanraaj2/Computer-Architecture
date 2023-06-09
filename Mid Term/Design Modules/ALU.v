`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 03:43:59 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [63:0] a,
    input [63:0] b,
    input clk, reset,
    input [3:0] ALUOp,
    output Zero,
    output reg [63:0] result
    );
    always @ (*)
    begin
    if (reset)
        begin
            assign result = 0;
        end
    else
        begin
    //    case (ALUOp)
        if (ALUOp == 4'b0000)
            assign result = a & b;    // Bitwise AND operation
        
        else if (ALUOp == 4'b0001)
            assign result = ~(a | b); // Bitwise NOR operation
        
        else if (ALUOp == 4'b0010)
            assign result = a > b;
        else if (ALUOp == 4'b0011)
            assign result = a * 2;
        else if (ALUOp == 4'b0100)
            begin
                assign result = a==b ;
            end
        else if (ALUOp == 4'b1010)
            begin @(posedge clk)
                assign result = a + b;    // Addition operation
            end
        else if (ALUOp == 4'b1100)
            begin @(posedge clk)
                assign result = a - b;    // Subtraction operation
            end
        end
end

// Output ZERO if result is equal to zero, otherwise output 0
assign Zero = (result == 64'b0) ? 1'b1 : 1'b0;

endmodule
