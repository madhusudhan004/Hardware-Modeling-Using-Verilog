module nandhalfadder(a,b,sum,carry);
input a,b;
output sum,carry;
wire n2,n11,n12,n13,n14;
nand g1(n2,a,b);
nand g2(carry,n2,n2);
nand g3(n11,a,a);
nand g4(n12,b,b);
nand g5(n13,b,n11);
nand g6(n14,a,n12);
nand g7(sum,n13,n14);
endmodule