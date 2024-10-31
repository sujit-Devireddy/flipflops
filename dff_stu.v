module dff_stu(clk,rst,d,q);
input clk,rst,d;
output q;
wire n1,n2,n3,n4,n5,n6,n7,n8,n9;
not(n1,clk);
not(n2,n1);
nand(n3,d,n1);
nand(n4,n3,n1);
nand(n5,n3,n6);
nand(n6,n4,n5);
nand(n7,n2,n5);
nand(n8,n2,n7);
nand(q,n7,n9);
nand(n9,n8,q);
endmodule
