module RCC(clk,reset,q);

input clk;
input reset;
output [3:0] q;


//T flip flop instances are being called. As many instances would be called as the number of bits in the counter.
TFF t0 (clk,reset,q[0]);
TFF t1 (q[0],reset,q[1]);
TFF t2 (q[1],reset,q[2]);
TFF t3 (q[2],reset,q[3]);

endmodule
