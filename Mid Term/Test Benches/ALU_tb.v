`timescale 1ns / 1ps

module ALU_tb();
  reg [63:0] a; // register for input operand a
  reg [63:0] b; // register for input operand b
  reg clk, reset;
  reg [3:0] ALUOp; // register for control signal
  wire Zero; // wire for zero flag
  wire [63:0] Result; // wire for output result

  ALU ALU1(.a(a), .b(b), .clk(clk), .reset(reset), .ALUOp(ALUOp), .Zero(Zero), .result(Result)); // instantiating ALU module

  initial
    begin
      a = 64'd10; // assigning decimal value 30 to operand a
      b = 64'd15; // assigning decimal value 20 to operand b
      clk = 1'b0;
      reset = 1'b0;
      ALUOp = 4'b0000; // assigning AND operation
      #7
      ALUOp = 4'b0001; // assigning NOR operation
      #7
      ALUOp = 4'b0010; 
      #7
      ALUOp = 4'b0011;
      #7
      ALUOp = 4'b0100;
      #7
      ALUOp = 4'b1010; // assigning Add operation
      #7
      ALUOp = 4'b1100; // assigning Subtract operation
      #7
      reset = 1;
      ALUOp = 4'b0000; // assigning AND operation
      #7
      ALUOp = 4'b0001; // assigning NOR operation
      #7
      ALUOp = 4'b0010; 
      #7
      ALUOp = 4'b0011;
      #7
      ALUOp = 4'b0100;
      #7
      ALUOp = 4'b1010; // assigning Add operation
      #7
      ALUOp = 4'b1100; // assigning Subtract operation
      #7
      a = 64'd3; // assigning binary value 1 to operand a
      b = 64'd0; // assigning binary value 0 to operand b
    end

  always
      #10 clk = ~clk;
  
endmodule
