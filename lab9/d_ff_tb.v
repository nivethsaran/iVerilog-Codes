module d_ff_tb;
reg clk,D,Rst;
wire Q;
integer i;
d_ff mod(clk,D,Rst,Q);
initial begin
D=0;
Rst=1;
#8 D=1;
#10 D=0;
#10 D=0;
#10 D=1;
#10 D=0;
#10 D=1;
#40;
end
initial begin
clk=0;

for(i=0;i<=10;i=i+1)
#10 clk=~clk;
end
initial
begin
$display("Clock	 D	 Q");
$monitor("%d %d	 %d	 %d",$time,clk,D,Q);
end
endmodule