`include "jkff.v"
module count_stu_jk(clk,rst,count);
input clk,rst;
//output q;
output[2:0]count;

//and (jb,qa,qa);
and g1(jc,qb,qa);
and g2(jb,qa,1'b1);
and g3(ja,1'b1,1'b1);
and g4(kc,qb,qa);
and g5(kb,qa,1'b1);
and g6(ka,1'b1,1'b1);
jkff u0(ja,ka,clk,rst,count[0]);
jkff u1(jb,kb,clk,rst,count[1]);
jkff u2(jc,kc,clk,rst,count[2]);
assign qa=count[0];
assign qb=count[1];
assign qc=count[2];

endmodule

/*module jkff(j,k,clk,rst,q);
input j,k,clk,rst;
output reg q;
always @(posedge clk) begin
	if(rst==1)q<=0;
	else begin
	case({j,k})
		 2'b00 :  q <= q;  
         2'b01 :  q <= 0;  
         2'b10 :  q <= 1;  
         2'b11 :  q <= ~q; 
	endcase
	end
end
endmodule*/
