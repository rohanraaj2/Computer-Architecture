`timescale 1ns / 1ps

module registerFile(
    
    input [63:0] WriteData,
    input [4:0] RS1,
    input [4:0] RS2,
    input [4:0] RD,
    input RegWrite,clk,reset,
    output reg [63:0] ReadData1,
    output reg [63:0] ReadData2
    );
    
    reg[63:0] Registers [31:0];
    initial 
        begin
        Registers[0] = 64'd1; // initializing registers with random values
        Registers[1] = 64'd2;
        Registers[2] = 64'd3;
        Registers[3] = 64'd4;
        Registers[4] = 64'd5;
        Registers[5] = 64'd6;
        Registers[6] = 64'd7;
        Registers[7] = 64'd8;
        Registers[8] = 64'd9;
        Registers[9] = 64'd10;
        Registers[10] = 64'd11;
        Registers[11] = 64'd12;
        Registers[12] = 64'd13;
        Registers[13] = 64'd14;
        Registers[14] = 64'd15;
        Registers[15] = 64'd16;
        Registers[16] = 64'd17;
        Registers[17] = 64'd18;
        Registers[18] = 64'd19;
        Registers[19] = 64'd20;
        Registers[20] = 64'd21;
        Registers[21] = 64'd22;
        Registers[22] = 64'd23;
        Registers[23] = 64'd24;
        Registers[24] = 64'd25;
        Registers[25] = 64'd26;
        Registers[26] = 64'd27;
        Registers[27] = 64'd28;
        Registers[28] = 64'd29;
        Registers[29] = 64'd30;
        Registers[30] = 64'd31;
        Registers[31] = 64'd32;
        end
        
    always @(posedge clk) // at every positive edge of clock
    begin
        case(RegWrite) 
            1'b1   : Registers[RD] <= WriteData; // if RegWrite is 1, the value of WriteData is stored in RD index of Registers. We are writing data
        endcase 
    end
    
    always @(*) // whenever input in the block changes
    begin
        if(reset) // is reset is 1
            begin
                ReadData1 = 64'b0; // ReadData outputs are set to 0
                ReadData2 = 64'b0;
             end
        else // reset is 0
            begin
                ReadData1 = Registers[RS1]; // ReadData outputs are assigned relevant data from Registers so that data is read from the Registers and displayed as output
                ReadData2 = Registers[RS2];
            end
    end
endmodule

Test Bench:

module tb_RegisterFile ();
reg [63:0]WriteData;
reg [4:0]RS1;
reg [4:0]RS2;
reg [4:0]RD;
reg RegWrite, clk, reset;
wire  [63:0]ReadData1;
wire  [63:0]ReadData2;

registerFile regFile (WriteData, RS1, RS2, RD, RegWrite, clk, reset, ReadData1, ReadData2);

initial
begin
    clk = 0;
    RegWrite = 0;
    reset = 1;
    // add x20,x10,x20
    RS1 = 10; //ReadData1 reads value of register number 10 and the value is 11
    RS2 = 20; //ReadData2 reads value in register number 20 and the value loaded is  21
    WriteData = 64'd32;    //This value 32 is given by user for now, the add instruction given above is just to show how does the process works
    RD = 20;  //The value of register number 20 was '21' . This 21 is the value or 'data'
    #10 reset = 0;
    #10 RegWrite = 1;//allow write in register 20
end
always
    #5 clk=~clk;
endmodule
