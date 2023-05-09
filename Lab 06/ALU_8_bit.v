`timescale 1ns / 1ps

module ALU_8_bit(
    input [7:0] a,
    input [7:0] b,
    input CarryIn,
    input [3:0] control,
    output CarryOut,
    output [7:0] result
    );
    
    wire w1,w2,w3,w4,w5,w6,w7;
    // Creating 8 instances of the ALU_1_bit module, one for each bit of the operands. Each instance performs a single-bit operation and produces a single-bit result
    
    // ALU1 instance for bit 0
    ALU_1_bit ALU1(a[0],b[0],CarryIn,control,w1,result[0]);
    
    // ALU2 instance for bit 1
    ALU_1_bit ALU2(a[1],b[1],CarryIn,control,w2,result[1]);
    
    // ALU3 instance for bit 2
    ALU_1_bit ALU3(a[2],b[2],CarryIn,control,w3,result[2]);
    
    // ALU4 instance for bit 3
    ALU_1_bit ALU4(a[3],b[3],CarryIn,control,w4,result[3]);
    
    // ALU5 instance for bit 4
    ALU_1_bit ALU5(a[4],b[4],CarryIn,control,w5,result[4]);
    
    // ALU6 instance for bit 5
    ALU_1_bit ALU6(a[5],b[5],CarryIn,control,w6,result[5]);
    
    // ALU7 instance for bit 6
    ALU_1_bit ALU7(a[6],b[6],CarryIn,control,w7,result[6]);
    
    // ALU8 instance for bit 7
    ALU_1_bit ALU8(a[7],b[7],CarryIn,control,CarryOut,result[7]);

endmodule
