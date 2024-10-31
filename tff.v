module tff(clk,rst,t,q);
input clk,rst,t;
output reg q;
reg q_t;
assign q=q_t;
always @(posedge clk)begin
	if(rst==1) q_t<=0;
	else begin
	case(t)
		1'b0 : q_t<=q;
		1'b1 : q_t<=~q;
	endcase
	//$display("new");
	end
end	
endmodule
