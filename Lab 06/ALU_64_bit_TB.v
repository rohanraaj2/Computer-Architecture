`timescale 1ns / 1ps

module ALU_64_bit_TB();
reg [63:0] a; // register for input operand a
reg [63:0] b; // register for input operand b
reg [3:0] Opcode; // register for control signal
wire [63:0] Result; // wire for output result
wire zero; // wire for zero flag

ALU_64_bit ALU1(.a(a), .b(b), .control(Opcode), .result(Result), .ZERO(zero)); // instantiating ALU_64_bit module

initial
begin
a = 64'd30; // assigning decimal value 30 to operand a
b = 64'd20; // assigning decimal value 20 to operand b
Opcode = 4'b0000; // assigning AND operation
#5
Opcode = 4'b0001; // assigning OR operation
#5
Opcode = 4'b1100; // assigning NOR operation
#5
Opcode = 4'b0010; // assigning ADD operation
#5
a = 64'b1; // assigning binary value 1 to operand a
b = 64'b0; // assigning binary value 0 to operand b
end
endmodule