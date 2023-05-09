`timescale 1ns / 1ps

module ALU_64_bit(
 input [63:0] a,
 input [63:0] b, 
 input [3:0] control,
 output reg [63:0] result,
 output ZERO
 );
 
 always @ (*)
 begin
 case (control)
 4'b0000: result = a & b;
 4'b0001: result = a | b;
 4'b0010: result = a + b;
 4'b0110: result = a - b;
 4'b1100: result = ~(a | b); 
 default:
 result = 0;
 endcase
 end
 assign ZERO = ( result == 64'b0) ? 1'b1 : 1'b0;
endmodule
