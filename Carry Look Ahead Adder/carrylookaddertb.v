`timescale 1ns/1ps
module carrylookaddertb;
reg [3:0]a,b;
wire [3:0]sum;
wire cout;
carrylookadder DUT(a,b,sum,cout);
initial
begin
$dumpfile("carrylookadder.vcd");
$dumpvars(0,carrylookaddertb);
$monitor("%0t,A=%b,B=%b,Sum=%b,Cout=%b",$time,a,b,sum,cout);
a=4'b1010;b=4'b1001;
#5 a=4'b1111;b=4'b0001;
#5 a=4'd7;b=4'd11;
#20 $finish;
end
endmodule
