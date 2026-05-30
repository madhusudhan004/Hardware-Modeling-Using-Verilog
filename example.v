module example(a,b,c,d,e,f,g,y);
input a,b,c,d,e,f,g;
output y;
wire t1,t2,t3;
nand #1 g1 (t1,a,b);
and #2 g2(t2,c,d,e);
and #2 g3(t3,f,g);
and #2 g4(y,t1,t2,t3);
endmodule

