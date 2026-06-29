module comp1s(a,b,d,carry);
input [3:0]a,b;
output reg [3:0]d;
output reg carry;
reg[4:0] temp;
always @(*)
begin
temp={1'b0,a}+{1'b0,~b};
carry=temp[4];
if(carry)
begin
	d=temp[3:0]+1'b1;
end
else
begin
	d=~temp[3:0];
end
end
endmodule




