`timescale 1ns/1ps
module half_adder_tb;
reg a,b;
wire sum,cout;
half_adder DUT(.sum(sum),.cout(cout),.a(a),.b(b));
initial
begin
$dumpfile("wave.vcd");
$dumpvars(0,half_adder_tb);
$monitor($time,"A=%b,B=%b,SUM=%b,COUT=%b",a,b,sum,cout);
a=1'b0;b=1'b0;
#5 a=1'b0;b=1'b1;
#5 a=1'b1;b=1'b0;
#5 a=1'b1;b=1'b1;
#20 $finish;
end
endmodule
