module comp1stb;
reg [3:0]a,b;
wire [3:0]d;
wire carry;
comp1s DUT(a,b,d,carry);
initial
begin
$dumpfile("comp1s.vcd");
$dumpvars(0,comp1stb);
$display("_________________");
$display("Time\tA\tB\tSum\tCarry\tSign");
$display("_________________");
a=4'b1101;b=4'b1001;
#5
if(carry)
	$display("%0t\t%b\t%b\t%b\t%b\tPositve",$time,a,b,d,carry);
else
	$display("%0t\t%b\t%b\t%b\t%b\tNegative",$time,a,b,d,carry);
#5 a=4'b1001;b=4'b1101;
#5
if(carry)
	$display("%0t\t%b\t%b\t%b\t%b\tPositve",$time,a,b,d,carry);
else
	$display("%0t\t%b\t%b\t%b\t%b\tNegative",$time,a,b,d,carry);
#5 a=4'b1101;b=4'b0111;
#5
if(carry)
	$display("%0t\t%b\t%b\t%b\t%b\tPositve",$time,a,b,d,carry);
else
	$display("%0t\t%b\t%b\t%b\t%b\tNegative",$time,a,b,d,carry);
#5 a=4'b0111;b=4'b1101;
#5
if(carry)
	$display("%0t\t%b\t%b\t%b\t%b\tPositve",$time,a,b,d,carry);
else
	$display("%0t\t%b\t%b\t%b\t%b\tNegative",$time,a,b,d,carry);
#20 $finish;
end
endmodule
