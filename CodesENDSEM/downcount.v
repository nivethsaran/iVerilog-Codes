module down_four(clk,reset,counter_up);
input clk,reset;
output [3:0]counter_up;
reg counter_up;
always @(posedge clk)
begin
if(reset==0)
counter_up = 4'b1111;
else
counter_up = counter_up - 4'b0001;
end
endmodule

module down_four_tst;
reg clk,reset;
wire [3:0]counter;
down_four a1(clk,reset,counter);
initial
begin
$monitor("At time %2d, Clock:%b reset:%b Counter:%b",$time,clk,reset,counter);
clk = 1'b1;
reset = 1'b0;
#1 reset = 1'b1;
#180 reset = 1'b0;
#20 reset = 1'b1;
#50 $finish;
end
always #5 clk=~clk;
endmodule