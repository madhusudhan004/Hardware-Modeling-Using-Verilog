module carrylookadder(a,b,sum,cout);
input [3:0]a,b;
output [3:0] sum;
output cout;
wire [2:0]c;
wire p0,p1,p2,p3,g0,g1,g2,g3;
assign p0=a[0]^b[0]; assign g0=a[0]&b[0];
assign p1=a[1]^b[1]; assign g1=a[1]&b[1];
assign p2=a[2]^b[2]; assign g2=a[2]&b[2];
assign p3=a[3]^b[3]; assign g3=a[3]&b[3];
assign sum[0]=p0;
assign c[0]=g0;
assign sum[1]=p1^g0;
assign c[1]=g1|(g0&p1);
assign sum[2]=p2^(g1|(g0&p1));
assign c[2]=g2|(g1&p2)|(g0&p1&p2);
assign sum[3]=p3^(g2|(g1&p2)|(g0&p1&p2));
assign cout=g3|(g2&p3)|(g1&p2&p3)|(g0&p1&p2&p3);
endmodule
