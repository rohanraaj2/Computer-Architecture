`timescale 1ns / 1ps

module DFF(clk,r,q,d);

input clk;
input r;
input d;
output reg q;

//running a loop that checks conditions on very negative edge of clock or positive edge of reset
always @ (negedge clk or posedge r)
begin

//if the reset is true then we initialize q to 0 otherwise it is equal to the input d
if (r)
begin
q<=1'b0;
end
else
begin
q<=d;
end

end

endmodule
