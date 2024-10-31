`include"down_counter.v"
module tb;
reg clk,rst;
wire[3:0]count;
down_counter dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
@(posedge clk);
rst=0;
#100;
$display("t:%0t count=%0d",$time,count);
$finish;
end
endmodule
