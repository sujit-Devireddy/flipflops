`include "dff.v"
module counter(clk,rst,count);
input clk,rst;
output[2:0]count;
wire n1,n2,n3,n4,n5;
not(q3b,q3);
not(q2b,q2);
not(q1b,q1);
and(n1,q3,q1);
and(n2,q3b,q2b,q1b);
and(n3,q3,q2,q1b);
and(n4,q2b,q1b);
and(n5,q2,q1);
or(d3,n1,n2,n3);
or(d2,n4,n5);
and(d1,q1b,1'b1);
dff u0(clk,rst,d1,count[0]);
dff u1(clk,rst,d2,count[1]);
dff u2(clk,rst,d3,count[2]);
assign q1=count[0];
assign q2=count[1];
assign q3=count[2];
endmodule

