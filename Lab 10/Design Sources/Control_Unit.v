`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 03:50:43 PM
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(
    input [6:0] Opcode,
    output reg [1:0] ALUOp,
    output reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite  
    );
    always @(*)
        if (Opcode == 7'b0110011) // R-Type
            begin
                assign ALUSrc = 1'b0;
                assign MemtoReg = 1'b0;
                assign RegWrite = 1'b1;
                assign MemRead = 1'b0;
                assign MemWrite = 1'b0;
                assign Branch = 1'b0;
                assign ALUOp = 2'b10;
            end
        else if (Opcode == 7'b0000011) // I-Type (ld)
            begin
                assign ALUSrc = 1'b1;
                assign MemtoReg = 1'b1;
                assign RegWrite = 1'b1;
                assign MemRead = 1'b1;
                assign MemWrite = 1'b0;
                assign Branch = 1'b0;
                assign ALUOp = 2'b00;
            end
        else if (Opcode == 7'b0100011) // S-Type (sd)
            begin
                assign ALUSrc = 1'b1;
                assign MemtoReg = 1'bx;
                assign RegWrite = 1'b0;
                assign MemRead = 1'b0;
                assign MemWrite = 1'b1;
                assign Branch = 1'b0;
                assign ALUOp = 2'b00;
            end
        else if (Opcode == 7'b1100011) // SB-Type (Beq)
            begin
                assign ALUSrc = 1'b0;
                assign MemtoReg = 1'bx;
                assign RegWrite = 1'b0;
                assign MemRead = 1'b0;
                assign MemWrite = 1'b0;
                assign Branch = 1'b1;
                assign ALUOp = 2'b01;
            end            
endmodule
