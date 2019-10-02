
module d_ff(input wire clock, input wire D,input Rst,output reg Q);
always @(negedge Rst or posedge clock)
begin
if(!Rst)
Q=0;
else
Q=D;
end
endmodule

module testbench;
reg clock;
reg D;
wire Q;
integer i;

d_ff m(clock,D,Rst,Q);
initial begin
D=0;
#8 D=1;
#10 D=0;
#10 D=0;
#10 D=1;
#10 D=0;
#10 D=1;
#40;
end
initial begin
clock = 0;
for(i=0;i<=10;i=i+1)
#10 clock = ~clock;
end
initial begin
$monitor("clock = %d, D=%d, Q=%d \n",clock,D,Q);
end
endmodule