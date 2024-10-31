module counter(clk,rst,count);
parameter N = 6;  
parameter WIDTH = 4;
input clk,rst;  
output reg[WIDTH-1:0]count;  
  
  always @ (posedge clk) begin  
    if (rst==1) begin  
      count<= 0;  
    end 
	else begin  
      if (count == N)  
        count<= 0;  
      else  
        count<= count - 1;  
    end  
  end  
endmodule  
