`timescale 1ns / 1ps

module top_control(
    input [6:0] Opcode,
    input [3:0] Funct,
    output Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite,
    output [3:0] Operation
    );
    Control_Unit c1 (Opcode, ALUOp, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite);
    ALU_Control a1(ALUOp, Funct, Operation);
endmodule
