module upcounter(clk,reset,counter_up);
input clk,reset;
output reg[3:0] counter_up;
always @(posedge clk)
begin
if(reset==0)
counter_up<=4'b0000;
else
counter_up<=counter_up+4'b0001;
end endmodule