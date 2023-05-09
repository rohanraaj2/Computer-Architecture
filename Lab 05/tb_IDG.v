`timescale 1ns / 1ps

module tb_IDG();
    reg [31:0] instruction;
    wire [63:0] imm_data;
    
    Immediate_Data_Generator u1(.instruction(instruction),.imm_data(imm_data));
    
    initial
    begin 
        instruction = 32'b01000001111111101000001110110011;
        #10
        instruction[6:0] = 0000011;
        # 10
        instruction[6:0] = 0100011;
    end

endmodule
