`timescale 1ns/1ps
module bin2greytb;
reg [3:0]bin;
wire [3:0]grey;
bin2grey DUT(bin,grey);
initial
begin
$dumpfile("bin2grey.vcd");
$dumpvars(0,bin2greytb);
$monitor($time,"Bin=%b,Grey=%b",bin,grey);
bin=4'b1001;
#5 bin=4'b0101;
#5 bin=4'b1101;
#20 $finish;
end
endmodule
