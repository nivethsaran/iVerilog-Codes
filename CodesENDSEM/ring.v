module ring(clk,reset,R);
input clk,reset;
output [3:0]R;
reg [3:0]R;
always @(posedge clk,reset)

if(clk==1)
begin
if(reset==0)
R<=4'b1000;
else
begin
R[3]<=R[0];
R[2]<=R[3];
R[1]<=R[2];
R[0]<=R[1];
end
end
endmodule

module ring_tst;
reg clk,reset;
wire [3:0]R;
ring a1(clk,reset,R);
initial
begin
$monitor("At time %2d, Clock:%b reset:%b R:%b",$time,clk,reset,R);
clk = 1'b1;
reset = 1'b0;
#100 $finish;
end
always #5 clk=~clk;
always #30 reset=~reset;
endmodule