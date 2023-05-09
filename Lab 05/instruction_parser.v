`timescale 1ns / 1ps

module instruction_parser(
    input [31:0] instructions,
    output [6:0] opcode,
    output [4:0] rd,
    output [2:0] funct3,
    output [4:0] rs1,
    output [4:0] rs2,
    output [6:0] funct7  
    );
    
    assign opcode = instructions[6:0];
    assign rd = instructions[11:7];
    assign funct3 = instructions[14:12];
    assign rs1 = instructions[19:15];
    assign rs2 = instructions[24:20];
    assign funct7 = instructions[31:25];
    
endmodule
