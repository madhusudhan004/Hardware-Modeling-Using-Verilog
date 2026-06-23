module mux41(in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;
wire [1:0]ab;
wire a,b;
mux21 n1(in[1:0],sel[0],a);
mux21 n2(in[3:2],sel[0],b);
assign ab={b,a};
mux21 n3(ab,sel[1],out);
endmodule