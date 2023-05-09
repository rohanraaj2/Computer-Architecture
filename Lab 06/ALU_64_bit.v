`timescale 1ns / 1ps

// 64-bit ALU module with 2 64-bit inputs, 4-bit control input, and 64-bit output
module ALU_64_bit(
    input [63:0] a,
    input [63:0] b, 
    input [3:0] control,
    output reg [63:0] result,
    output ZERO
);

// Combinational logic for different ALU operations based on control input
always @ (*)
begin
    case (control)
        4'b0000: result = a & b;    // Bitwise AND operation
        4'b0001: result = a | b;    // Bitwise OR operation
        4'b0010: result = a + b;    // Addition operation
        4'b0110: result = a - b;    // Subtraction operation
        4'b1100: result = ~(a | b); // Bitwise NOR operation
        default: result = 0;        // Default output
    endcase
end

// Output ZERO if result is equal to zero, otherwise output 0
assign ZERO = (result == 64'b0) ? 1'b1 : 1'b0;

endmodule
