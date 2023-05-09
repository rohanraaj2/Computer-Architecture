module testbench_ALU();
    // Declare input registers and output wires
    reg a, b, CarryIn;
    reg [3:0] ALUOp;
    wire result, CarryOut;
    
    // Instantiate the ALU_1_bit module
    ALU_1_bit a1(a, b, CarryIn, ALUOp, result, CarryOut);
    
    // Begin the initial block
    initial begin
        
        // Set the initial values for the input registers and ALUOp
        a = 1'b1;
        b = 1'b0;
        CarryIn = 1'b0;
        ALUOp = 4'b0000;
        
        // Wait for 10 simulation time units and set ALUOp to 0001
        #10
        ALUOp = 4'b0001;
        
        // Wait for 10 simulation time units and set ALUOp to 0010
        #10
        ALUOp = 4'b0010;
        
        // Wait for 10 simulation time units, set CarryIn to 1, and set ALUOp to 0110
        #10
        CarryIn = 1'b1;
        ALUOp = 4'b0110;
        
        // Wait for 10 simulation time units, set CarryIn back to 0, and set ALUOp to 1100
        #10
        CarryIn = 1'b0;
        ALUOp = 4'b1100;
        
    end

endmodule
