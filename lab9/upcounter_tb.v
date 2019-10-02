module upcounter_tb;
reg clk,reset;
wire[3:0] counter_up;
upcounter up(clk,reset,counter_up);
initial
begin
$monitor("%d %b %b",$time,clk,counter_up);
$display("Time	Clock	Counter");
clk=1;
reset=0;
#1 reset=1;
#180 reset=0;
#20 reset=1;
#50 $finish;
end
always #5 clk=~clk;
endmodule	