module gates_tb;
reg a,b;
wire c;
gates DUT(a,b,c);

initial 
begin
$dumpfile("wave.vcd");
$dumpvars(0,gates_tb);
$monitor($time,"A=%b,B=%b,C=%b",a,b,c);
a=0;b=0;
#5 a=1;b=0;
#5 a=0;b=1;
#5 a=1;b=1;
#5 $finish;
end
endmodule