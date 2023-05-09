`timescale 1ns / 1ps

// Define the testbench module
module ALU_8_bit_TB();
// Declare input signals
reg [7:0] a;
reg [7:0] b;
reg In;
reg [3:0] Opcode;
// Declare output signals
wire Out;
wire [7:0] Result;

// Instantiate the DUT (Device Under Test)
ALU_8_bit ALU1(.a(a), .b(b), .CarryIn(In), .control(Opcode), .CarryOut(Out), .result(Result));

// Define initial block for testbench
initial begin
    // Assign initial values to inputs
    a = 8'd10;
    b = 8'd30;
    In = 1'b0;
    Opcode = 4'b0000; //AND
    
    // Wait for 5ns before changing opcode
    #5
    
    Opcode = 4'b0001; //OR
    
    // Wait for 5ns before changing opcode
    #5
    
    Opcode = 4'b1100; //NOR
    
    // Wait for 5ns before changing opcode
    #5
    
    Opcode = 4'b0010; //ADD
    
    // Wait for 5ns before changing input signal
    #5
    
    In = 1'b1;
    Opcode = 4'b0110; //Subtract
end 
endmodule
