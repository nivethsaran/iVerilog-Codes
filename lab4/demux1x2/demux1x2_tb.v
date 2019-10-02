module demux1x2_tb;
wire[1:0] t_yout;
reg t_xin,t_enable;
demux1x2 dm1(.xin(t_xin),.enable(t_enable),.yout(t_yout));
initial
begin
$monitor("%b %b %b ",t_xin,t_enable,t_yout);
$display("X E Y");

t_xin=1'b0;
t_enable=1'b0;
#5
t_xin=1'b0;
t_enable=1'b1;
#5
t_xin=1'b1;
t_enable=1'b0;
#5
t_xin=1'b1;
t_enable=1'b1;

end 
endmodule