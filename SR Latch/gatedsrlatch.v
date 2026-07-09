module gatedsrlatch(s,r,c,q,qbar);
input s,r,c;
output q,qbar;
wire scomp,rcomp;
nand n1(scomp,s,c);
nand n2(rcomp,r,c);
nand n3(q,scomp,qbar);
nand n4(qbar,rcomp,q);
endmodule