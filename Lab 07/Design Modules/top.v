`timescale 1ns / 1ps

module top(
    input [31:0] instruction,
    output [4:0] rs1, rs2, 
    output [2:0] funct3, 
    output [6:0] opcode
    );
    InsParser ip1(instruction, opcode, rd, funct3, rs1, rs2, funct7); // passing the instruction input to parser to obtain the desired outputs such as rs1, rs2 and rd
    registerFile rf1(64'b0,rs1,rs2,rd,1'b0,1'b0,1'b0,ReadData1,ReadData2);
endmodule
