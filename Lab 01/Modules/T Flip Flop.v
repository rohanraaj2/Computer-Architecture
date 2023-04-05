module TFF (clk,reset,q);

input clk;
input reset;
output q;
wire d;

//D flip flop instance called
DFF d0(clk,reset,q,d);

//not gate called to be used as inverter for q before its sent to d.
not n1(d,q);

endmodule
