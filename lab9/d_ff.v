module d_ff(input wire clk,
input wire D,
input Rst,
output reg Q);
 always@(negedge Rst or posedge clk)
 begin
 if(!Rst)
 Q=0;
 else
 Q=D;
 end
 endmodule