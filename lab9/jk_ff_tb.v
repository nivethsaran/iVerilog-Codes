module sr_ff_tb;
reg clk,J,K,Rst,Qin;
wire Qout,QoutBar;
integer i;
sr_ff mod(clk,J,K,Qin,Rst,Qout,QoutBar);
initial begin
Rst=1;
Qin=0;
#10 
J=0;
K=0;
#10 
J=0;
K=1;
#10 
J=1;
K=0;
#10 
J=1;
K=1;
#40;
end
initial begin
clk=0;

for(i=0;i<=6;i=i+1)
#10 clk=~clk;
end
initial
begin
$display("          Time    Clk     J       K	    Q	 Qb");
$monitor("%d %d	 %d	%d %d %d",$time,clk,J,K,Qout,QoutBar);
end
endmodule