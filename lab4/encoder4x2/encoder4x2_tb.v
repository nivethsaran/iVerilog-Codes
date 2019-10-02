module enc4x2_tb;
wire[1:0] t_yout;
reg[3:0] t_xin;
enc4x2 m1(.xin(t_xin),.yout(t_yout));
initial
begin
$monitor("%b %b ",t_xin,t_yout);
$display("Xin  yout");

t_xin=4'b1000;
#5

t_xin=4'b0100;
#5

t_xin=4'b0010;
#5

t_xin=4'b0001;



end 
endmodule