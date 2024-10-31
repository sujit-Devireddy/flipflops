`include "jkff.v" 
module counter(clk,rst,count);
input clk,rst;
output [2:0]count;
not(q2b ,q2);
not(q1b,q1);
and(j3,q2b,q1b);
and(j2,q1b,1'b1);
and(j1,1'b1,1'b1);
and(k3,q2b,q1b);
and(k2,q1b,1'b1);
and(k1,1'b1,1'b1);
jkff u0(j1,k1,clk,rst,count[0]);
jkff u1(j2,k2,clk,rst,count[1]);
jkff u2(j3,k3,clk,rst,count[2]);
assign q1=count[0];
assign q2=count[1];
assign q3=count[2];
endmodule



