module jkff(j,k,clk,rst,q);
input j,k,clk,rst;
output q;
reg q_t;
assign q = q_t;
always @(posedge clk) begin
	if(rst==1)q_t<=0;
	else begin
	case({j,k})
		 2'b00 :  q_t = q;  
         2'b01 :  q_t = 0;  
         2'b10 :  q_t = 1;  
         2'b11 :  q_t = ~q; 
	endcase
	end
end
endmodule
