module gatedsrlatchtb;
reg s,r,c;
wire q,qbar;
gatedsrlatch DUT(.s(s),.r(r),.c(c),.q(q),.qbar(qbar));
initial
begin
$dumpfile("gatedsrlatch.vcd");
$dumpvars(0,gatedsrlatchtb);
$monitor("%0t,S=%b,R=%b,C=%b,Q=%b,Qbar=%b",$time,s,r,c,q,qbar);
c=0;
#5 s=0;r=0;
#5 c=1;
#5 s=0;r=1;
#5 s=1;r=0;
#5 s=0;r=0;
#5 c=0;
#5 c=1;
#5 s=1;r=1;
#5 s=0;r=0;
#5 c=0;
#20 $finish;
end
endmodule