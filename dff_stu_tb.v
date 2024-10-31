`include"dff_stu.v"
module tb;
reg clk,rst,d;
wire q;
dff_stu dut(clk,rst,d,q);
integer delay;
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
repeat(2)@(posedge clk);
rst=0;
delay=$urandom_range(5,20);
d=0;
repeat(20)begin
d=~d;
#delay;
end
#100;
$finish;
end
endmodule

