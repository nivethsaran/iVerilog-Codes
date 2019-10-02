module d_ff(input wire clk,
input wire T,
input Rst,
input wire Q
output reg Qout);
 always@(negedge Rst or posedge clk)
 begin
 if(T==1)
 Qout=~Qin;
 else
 Qout=Qin;
 end
 endmodule

