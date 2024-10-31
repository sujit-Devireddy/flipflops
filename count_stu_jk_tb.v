`include "count_stu_jk.v"
module tb;
reg clk,rst;
wire [2:0]count;
//integer delay;
count_stu_jk dut(clk,rst,count);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
@(posedge clk);
rst=0;
end
//initial begin  
//      j <= 0;  
//      k <= 0;  
//  
//      #5 j <= 0;  
//         k <= 1;  
//      #20 j <= 1;  
//          k <= 0;  
//      #20 j <= 1;  
//          k <= 1;  
//end
initial begin
#100;
$finish;
end
endmodule
