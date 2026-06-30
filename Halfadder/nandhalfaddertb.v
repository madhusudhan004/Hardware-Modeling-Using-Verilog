module nandhalfaddertb;
reg a,b;
wire sum,carry;
nandhalfadder DUT(.a(a),.b(b),.sum(sum),.carry(carry));
initial 
begin
$dumpfile("nandhalfadder.vcd");
$dumpvars(0,nandhalfaddertb);
$monitor("%0t,A=%b,B=%b,Sum=%b,Carry=%b",$time,a,b,sum,carry);
a=1'b0;b=1'b0;
#5 a=1'b0;b=1'b1;
#5 a=1'b1;b=1'b0;
#5 a=1'b1;b=1'b1;
end
endmodule