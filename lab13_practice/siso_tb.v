module siso_tb;
wire Q;
reg d,clk;
wire dout;
siso s1(Q,d,clk,dout);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
d=0;
#10 d=1;
#2 d=0;
#5 d=1;
#10 d=0;
#3 d=1;
#4 d=0;
end
endmodule