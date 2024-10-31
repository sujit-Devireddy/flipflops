`include "srff.v"
module counter(clk,rst,count);
input clk,rst;
output [2:0]count;

not(q3b,q3);
not(q2b,q2);
not(q1b,q1);
and(s2,q3b,q2b,q1b);
and(s1,q2b,q1b);
and(s0,q1b,1'b1);
and(r2,q3,q2b,q1b);
and(r1,q2,q1b);
and(r0,q1,1'b1);

srff u0(s0,r0,clk,count[0]);
srff u1(s1,r1,clk,count[1]);
srff u2(s2,r2,clk,count[2]);
assign q1=count[0];
assign q2=count[1];
assign q3=count[2];
endmodule
