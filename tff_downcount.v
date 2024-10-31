`include"tff.v"
module counter(clk,rst,count);
input clk,rst;
output [2:0]count;
not(q2b,q2);
not(q1b,q1);
and(t3,q2b,q1b);
and(t2,q1b,1'b1);
and(t1,1'b1,1'b1);
tff u0(clk,rst,t1,count[0]);
tff u1(clk,rst,t2,count[1]);
tff u2(clk,rst,t3,count[2]);
assign q1=count[0];
assign q2=count[1];
assign q3=count[2];
endmodule

