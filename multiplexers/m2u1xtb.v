module mux21tb;
reg [1:0]inp;
reg sel;
wire out;
mux21 DUT(.in(inp),.sel(sel),.out(out));

initial 
begin
$dumpfile("mux21.vcd");
$dumpvars(0,mux21tb);
$monitor($time,"IN=%b,SEL=%b,OUT=%b",inp,sel,out);
inp=2'b10;sel=1'b0;
#5 sel=1'b1;
#5 inp=2'b01;sel=1'b0;
#5 sel=1'b1;
#5 $finish;
end
endmodule
