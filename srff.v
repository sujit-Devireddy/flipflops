module srff(s,r,clk,q);
input s,r,clk;
output reg q;
//reg q_t;
//assign q_t=q;
always @(posedge clk) begin
	if(r==1)q<=0;
	else begin
	case({s,r})
		2'b00 : q<=q;
		2'b01 : q<=0;
		2'b10 : q<=1;
		2'b11 : q<=1'bx;
	endcase
	end
end
endmodule

