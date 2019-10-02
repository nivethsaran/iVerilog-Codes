module shiftregister( tin ,clk ,reset,s );

input tin ;
input clk ;
input reset ;   
output wire [1:0]s;

t_ff u0 (.tin(tin),.clk(clk),.reset(reset),.dout(s[0]));
t_ff u1 (.tin(s[0]),.clk(clk),.reset(reset),.dout(s[1]));



endmodule
