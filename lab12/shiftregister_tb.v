module shiftregister_tb;
// wire dout;
wire [1:0]s;
reg tin,clk,reset;
integer i=0;
shiftregister s1(tin ,clk ,reset,s);
initial
begin
reset=0;
clk=0;
for(i=0;i<=2;i=i+1)
#10 clk=~clk;
end
initial
begin
$monitor("%b %b %b %b",tin ,clk ,reset,s);
tin=1;

end
endmodule