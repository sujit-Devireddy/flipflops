`include"tff.v"

module counter_tff(clk,rst,count);
input clk,rst;
output[2:0]count;

and(t3,q2,q1);
and(t2,q1,1'b1);
and(t1,1'b1,1'b1);

tff u0(clk,rst,t1,count[0]);
tff u1(clk,rst,t2,count[1]);
tff u2(clk,rst,t3,count[2]);
assign q1=count[0];
assign q2=count[1];
assign q3=count[2];
endmodule

