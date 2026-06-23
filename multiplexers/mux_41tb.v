module mux41tb;
reg[3:0]in;
reg[1:0]sel;
wire out;
mux41 DUT(in,sel,out);
initial
begin
$dumpfile("mux41.vcd");
$dumpvars(0,mux41tb);
$monitor("%0t,Input=%b,Select=%b,Out=%b",$time,in,sel,out);
in=4'b1010;
sel=2'b00;
#5 sel=2'b01;
#5 sel=2'b10;
#5 sel=2'b11;
#5 in=4'b1101;
#5 sel=2'b00;
#5 sel=2'b01;
#5 sel=2'b10;
#5 sel=2'b11;
#20 $finish;
end
endmodule

