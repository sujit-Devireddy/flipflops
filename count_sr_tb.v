`include "count_sr.v"
module tb;
reg clk,rst;
wire [2:0]count;
count_sr dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
@(posedge clk);
rst=0;
end
initial begin
#100;
$finish;
end
endmodule
