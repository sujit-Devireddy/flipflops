`include"mod6.v"
module tb;
parameter N = 9;  
parameter WIDTH = 4;
reg clk,rst;
wire [WIDTH-1:0]count;
counter dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
rst=1;
@(posedge clk);
rst=0;
#200;
$finish;
end
endmodule
