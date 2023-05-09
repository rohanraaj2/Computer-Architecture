`timescale 1ns / 1ps

module Immediate_Data_Generator(
    input [31:0] instruction,
    output [63:0] imm_data
    );
    reg [11:0] x;
    instruction_parser u1 (instruction, b, c, d, e, f, g);
    always @ b
        if (b == 7'b1100011) // conditional such as beq, bne
            begin
                x[11] = instruction[31];
                x[10] = instruction[7];
                x[9:4] = instruction[30:25];
                x[3:0] = instruction[11:8];
            end
        else if (b == 7'b0000011) // load
            begin
                x = instruction[31:20];
            end
        else if (b == 7'b0100011) // store
            begin
                x[5:11] = instruction[31:25];
                x[4:0] = instruction[11:7];
            end
    assign imm_data[11:0] = x;
    assign imm_data[63:12] = {52{x[11]}};
endmodule
