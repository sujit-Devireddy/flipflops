`include"count_tff.v"

module tb;
reg clk,rst;
wire[2:0]count;
counter_tff dut(clk,rst,count);

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
@(posedge clk);
rst=0;
	#100;
	$finish;
end
endmodule
