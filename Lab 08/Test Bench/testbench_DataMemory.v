module testbench_DataMemory();
reg [63:0] Mem_Addr;
reg [63:0] Write_Data;
reg clk;
reg MemWrite;
reg MemRead;
wire [63:0] Read_Data;
Data_Memory testmodule(Mem_Addr,Write_Data,clk,MemWrite
,MemRead ,Read_Data);
initial begin
    
end
endmodule