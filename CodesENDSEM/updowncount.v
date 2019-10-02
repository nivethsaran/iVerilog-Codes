module up_down_four(clk,reset,a,counter_up);
input clk,reset,a;
output [3:0]counter_up;
reg counter_up;
always @(posedge clk)
begin
if(a==1'b0)
begin
   if(reset==0)
   counter_up = 4'b0000;
   else
   counter_up = counter_up + 4'b0001;
end
else
begin
   if(reset==0)
   counter_up = 4'b1111;
   else
   counter_up = counter_up - 4'b0001;
end
end
endmodule

module up_down_four_tst;
reg clk,reset,a;
wire [3:0]counter_up;
up_down_four a1(clk,reset,a,counter_up);
initial
begin
$monitor("At time %2d, Clock:%b reset:%b a:%b Counter:%b",$time,clk,reset,a,counter_up);
a=1'b0;
clk = 1'b1;
reset = 1'b0;
#1 reset = 1'b1;
#180 reset = 1'b0;
#20 reset = 1'b1;
#50 $finish;
end
always #5 clk=~clk;
always #160 a=~a;
endmodule