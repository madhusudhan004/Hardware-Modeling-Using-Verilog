module counter_tb;
reg rst,clk;
wire[31:0] count;
counter DUT(clk,rst,count);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
$dumpfile("wave.vcd");
$dumpvars(0,counter_tb);
$monitor($time,"RST=%b,Count=%d",rst,count);
rst=1;
#10 rst=0;
#1000 $finish;
end
endmodule