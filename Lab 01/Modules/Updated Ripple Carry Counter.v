module RCC(clk,reset,q);

input clk;
input reset;
output [4:0] q;


//T flip flop instances are being called. As many instances would be called as the number of bits in the counter.
TFF t0 (clk,reset,q[0]);
TFF t1 (q[0],reset,q[1]);
TFF t2 (q[1],reset,q[2]);
TFF t3 (q[2],reset,q[3]);
TFF t4 (q[3],reset,q[4]);

endmodule

timescale 1ns / 1ps

module DFF(clk,r,q,d);

input clk;
input r;
input d;
output reg q;

//running a loop that checks conditions on very negative edge of clock or positive edge of reset
always @ (posedge clk or posedge r)
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
