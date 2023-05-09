`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2023 05:03:50 PM
// Design Name: 
// Module Name: Data_Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Data_Memory(
    input [63:0] Mem_Addr,
    input [63:0] Write_Data,
    input clk,
    input MemWrite,
    input MemRead,
    output reg [63:0] Read_Data
    );
    reg [7:0] Memory [15:0];
    
    initial 
        begin
        Memory[0] = 8'b10000011;
        Memory[1] = 8'b00110100 ;
        Memory[2] = 8'b00000101;
        Memory[3] = 8'b00001111;
        Memory[4] = 8'b10110011;
        Memory[5] = 8'b10000100;
        Memory[6] = 8'b10011010;
        Memory[7] = 8'b00000000;
        Memory[8] = 8'b10010011;
        Memory[9] = 8'b10000100;
        Memory[10] = 8'b00010100;
        Memory[11] = 8'b00000000;
        Memory[12] = 8'b00100011;
        Memory[13] = 8'b00111000;
        Memory[14] = 8'b10010101;
        Memory[15] = 8'b00001110;
        end

        always @(*)
        begin        
            if (MemRead)
              begin
                assign Read_Data = {Memory[Mem_Addr+7], Memory[Mem_Addr+6], Memory[Mem_Addr+5], Memory[Mem_Addr + 4], Memory[Mem_Addr+3], Memory[Mem_Addr+2], Memory[Mem_Addr+1], Memory[Mem_Addr]};         
              end
        end
        
        always @(posedge clk)
            begin
                if (MemWrite)
                    begin
                        assign Mem_Addr[7] = Write_Data[7];
                        assign Mem_Addr[6] = Write_Data[6];
                        assign Mem_Addr[5] = Write_Data[5];   
                        assign Mem_Addr[4] = Write_Data[4]; 
                        assign Mem_Addr[3] = Write_Data[3];
                        assign Mem_Addr[2] = Write_Data[23:16];
                        assign Mem_Addr[1] = Write_Data[15:8];
                        assign Mem_Addr[0] = Write_Data[7:0];
     
                    end
            end     
endmodule
