`timescale 1ns / 1ps

module tb_tob();
    reg [31:0] instruction;
    wire [4:0] rs1, rs2;
    wire [2:0] funct3;
    wire [6:0] opcode;
    
    top t1(instruction,rs1,rs2,funct3,opcode);
    
    initial
    begin
    instruction = 32'h00500293;
    #10
    instruction = 32'h005001b3;
    #10
    instruction = 32'h007281b3;
    end
endmodule
