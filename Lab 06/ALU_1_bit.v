`timescale 1ns / 1ps   // sets the time unit for the simulation

module ALU_1_bit(      // module declaration
    input a,b,         // input ports a and b
    input CarryIn,     // input port CarryIn
    input [3:0] ALUOp, // input port ALUOp, a 4-bit bus that determines the operation
    output reg result, // output port result, a registered 1-bit bus that holds the result
    output CarryOut    // output port CarryOut, a 1-bit bus that holds the carry out
    );

    wire [1:0] operation; // declares a 2-bit wire called operation
    assign operation = ALUOp[1:0]; // assigns bits 1 and 0 of ALUOp to operation
    
    wire Ainvert, Binvert; // declares wires for inverted inputs
    assign Ainvert = ~a;   // assigns the inverse of input a to Ainvert
    assign Binvert = ~b;   // assigns the inverse of input b to Binvert
    
    wire mux1, mux2; // declares wires for multiplexers
    assign mux1 = (ALUOp[3])? Ainvert:a; // assigns Ainvert to mux1 if the 4th bit of ALUOp is 1, otherwise assigns a to mux1
    assign mux2 = (ALUOp[2])? Binvert:b; // assigns Binvert to mux2 if the 3rd bit of ALUOp is 1, otherwise assigns b to mux2
    
    assign AND = 2'b00; // assigns 2'b00 (binary 0) to the wire AND
    assign OR = 2'b01;  // assigns 2'b01 (binary 1) to the wire OR
    assign ADD = 2'b10; // assigns 2'b10 (binary 2) to the wire ADD
    
    always @ (*)         // always block triggered whenever any of the inputs change
    begin
        case(ALUOp[1:0]) // selects case based on bits 1 and 0 of ALUOp
        
        AND:            // case for AND operation
            begin
            result = mux1&mux2; // bitwise AND of mux1 and mux2, assigned to result
           
            end                    
        
        OR:             // case for OR operation
            begin
            result = mux1|mux2; // bitwise OR of mux1 and mux2, assigned to result
           
            end

        ADD:            // case for ADD operation
            begin
            result = mux1+mux2+CarryIn; // adds mux1, mux2, and CarryIn, and assigns the sum to result
            //CarryIn = 1'b0;  // commented out because CarryIn is an input, not an output
         
            end
        endcase 
    end
    
    assign CarryOut =(a&CarryIn) | (b&CarryIn) | (a&b) ;   // bitwise OR of different input combinations, assigned to CarryOut
    
endmodule
