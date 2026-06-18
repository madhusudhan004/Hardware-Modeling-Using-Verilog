module bin2grey(bin,grey);
input [3:0]bin;
output [3:0]grey;
assign grey=bin^(bin>>1);
endmodule