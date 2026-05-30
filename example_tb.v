module example_tb;
reg a,b,c,d,e,f,g;
wire y;
example uut(.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g),
.y(y));
initial
begin
$dumpfile("wave.vcd");
$dumpvars(0,example_tb);
end
initial
begin
$monitor($time,"A=%b,B=%b,C=%b,D=%b,E=%b,F=%b,G=%b,Y=%b",a,b,c,d,e,f,g,y);
a=0; b=0; c=0; d=0;e=0; f=0; g=0;
#5 a=1;b=1;c=0;d=0;e=1;f=0;g=1;
#5 a=0;b=1;c=0;d=0;e=1;f=0;g=0;
#5 a=0;b=0;c=0;d=0;e=1;f=1;g=1;
#5 a=0;b=0;c=1;d=1;e=1;f=1;g=1;
#5 $finish;
end
endmodule
