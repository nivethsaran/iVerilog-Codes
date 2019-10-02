module mux2x1(s,a,b,y);
output y;
input a,b,s;
reg y;
always @(s or a or b)
begin
if (s==0)
assign y=a;
else
assign y=b;
end
endmodule