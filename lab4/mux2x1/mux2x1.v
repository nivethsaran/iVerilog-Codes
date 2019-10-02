module mux2to1(a,b,s,mout);
output mout;
input a,b,s;
reg mout;
always @(a or b or s)
begin
if (s==0)
mout=a;
else
mout=b;
end
endmodule