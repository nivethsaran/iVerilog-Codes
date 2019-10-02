module d_ff_tb;
reg clk,T,Rst,Q;
wire Qout;
integer i;
d_ff mod(clk,T,Rst,Q,Qout);
initial begin
T=0;
Q=0;
Rst=1;
#8 T=1;
#10 T=0;
#10 T=0;
#10 T=1;
#10 T=0;
#10 T=1;
#40;
end
initial begin
clk=0;
for(i=0;i<=4;i=i+1)
#10 clk=~clk;
end
initial
begin
$display("Clock	 T	 Q");
$monitor("%d %d	 %d	 %d",$time,clk,T,Qout);
end
endmodule