`timescale 1ns / 1ps

module test_bench_top();
    reg [6:0] Opcode;
    reg [3:0] Funct;
    wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
    wire [3:0] Operation;
//    wire [1:0] ALUOp;

    top_control t1 (Opcode, Funct, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, Operation);
    
    initial
        begin
            Opcode = 7'b0000000;
            Funct = 4'b0000;
        end
    always
        begin
            # 10
            Funct = 4'bxxxx;
            Opcode = 7'b0110011; // R-Type
            
            # 50
            Funct = 4'b0000;

            # 50
            Funct = 4'b1000;

            # 50
            Funct = 4'b0111;
            # 50
            Funct = 4'b0110;
            
            # 50
            Funct = 4'bxxxx;
            Opcode = 7'b0000011; // I-Type (ld)
            
            # 50
            Funct = 4'b0000;

            # 50
            Funct = 4'b1000;

            # 50
            Funct = 4'b0111;
            # 50
            Funct = 4'b0110;
            
            
            # 50
            Funct = 4'bxxxx;
            Opcode = 7'b0100011; // S-Type (sd)
            
            # 50
            Funct = 4'b0000;

            # 50
            Funct = 4'b1000;

            # 50
            Funct = 4'b0111;
            # 50
            Funct = 4'b0110;
            
            
            # 50
            Funct = 4'bxxxx;
            Opcode = 7'b1100011; // SB-Type (Beq)
            
            # 50
            Funct = 4'b0000;

            # 50
            Funct = 4'b1000;

            # 50
            Funct = 4'b0111;
            # 50
            Funct = 4'b0110;
            
        end
endmodule
