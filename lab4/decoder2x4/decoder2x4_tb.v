module decoder2x4_tb;
wire[3:0] t_yout;
reg[1:0] t_xin;
reg t_enable;
dec2x4 m1(.xin(t_xin),.enable(t_enable),.yout(t_yout));
initial
begin
$monitor("%b %b %b ",t_xin,t_enable,t_yout);
$display("Xin Enable yout");

t_enable=1'b0;
t_xin=2'b00;
#5
t_enable=1'b1;
t_xin=2'b00;
#5
t_enable=1'b1;
t_xin=2'b01;
#5
t_enable=1'b1;
t_xin=2'b10;
#5
t_enable=1'b1;
t_xin=2'b11;



end 
endmodule