`timescale 1ns / 1ps

module test2();
    
    reg [31:0] a;
    wire [6:0] opcode;
    wire [4:0] rd;
    wire [2:0] funct3;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [6:0] funct7;
    
    instruction_parser a1(a, opcode, rd, funct3, rs1, rs2, funct7);
    
    initial
    begin
        a = 32'b00001010101000101011100011100101;

    end
endmodule
