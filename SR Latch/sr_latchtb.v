`timescale 1ns/1ps
module sr_latchtb;
reg set,reset;
wire q,qbar;
sr_latch DUT(.r(reset),.s(set),.q(q),.qbar(qbar));
initial
begin
$dumpfile("sr_latch.vcd");
$dumpvars(0,sr_latchtb);
$monitor("%0t, Set=%b,Reset=%b,Q=%b,Qbar=%b",$time,set,reset,q,qbar);
set=1'b1;reset=1'b0;
#5 set=1'b0;reset=1'b0;
#5 set=1'b0;reset=1'b1;
#5 set=1'b0;reset=1'b0;
#5 set=1'b1;reset=1'b1;
#5 $finish;
end
endmodule
