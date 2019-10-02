module mux4x1_tb;
wire t_y;
reg t_a,t_s0,t_b,t_c,t_d,t_s1;

mux4x1 m1(.a(t_a),.b(t_b),.c(t_c),.d(t_d),.s0(t_s0),.s1(t_s1),.y(t_y));
initial
begin

$monitor("%b %b %b %b %b  %b  %b ",t_a,t_b,t_c,t_d,t_s0,t_s1,t_y);
t_a=1'b0;
t_b=1'b1;
t_c=1'b0;
t_d=1'b1;
$display("A B C D S0 S1 Y");
t_s0=1'b0;
t_s1=1'b0;
#5
t_s0=1'b0;
t_s1=1'b1;
#5
t_s0=1'b1;
t_s1=1'b0;
#5
t_s0=1'b1;
t_s1=1'b1;



end 
endmodule