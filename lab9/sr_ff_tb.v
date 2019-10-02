module sr_ff_tb;
reg clk,S,R,Rst,Qin;
wire Qout,QoutBar;
integer i;
sr_ff mod(clk,S,R,Qin,Rst,Qout,QoutBar);
initial begin
Rst=1;
Qin=0;
#10 
S=0;
R=0;
#10 
S=0;
R=1;
#10 
S=1;
R=0;
#10 
S=1;
R=1;
#40;
end
initial begin
clk=0;

for(i=0;i<=10;i=i+1)
#10 clk=~clk;
end
initial
begin
$display("          Time    Clk     S       R	    Q	 Qb");
$monitor("%d %d	 %d	%d %d %d",$time,clk,S,R,Qout,QoutBar);
end
endmodule