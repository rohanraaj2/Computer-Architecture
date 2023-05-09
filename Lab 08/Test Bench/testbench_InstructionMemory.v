`timescale 1ns / 1ps

module testbench_InstructionMemory();
reg [63:0] Instr_Addr;
wire [31:0]Instruction;
Instruction_Memory testmodule(Instr_Addr, Instruction);
initial begin

Instr_Addr = 64'd0;
#100
Instr_Addr = 64'd5;
#100
Instr_Addr = 64'd11;
#100
Instr_Addr = 64'd8;

 
end
endmodule