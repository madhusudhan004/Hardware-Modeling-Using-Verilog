module mux21(in,sel,out);
input [1:0]in;
input sel;
output out;
wire t,n1,n2;

not g1 (t,sel);
and g2 (n1,in[0],t);
and g3 (n2,in[1],sel);
or g4 (out,n1,n2);
endmodule
