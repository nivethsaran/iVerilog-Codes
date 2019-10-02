module mux2x1_tb;
wire t_mout;
reg t_a,t_s,t_b;
mux2to1 m1(.a(t_a),.b(t_b),.s(t_s),.mout(t_mout));
initial
begin
$monitor("%b %b %b %b ",t_a,t_b,t_s,t_mout);
$display("A B S C");
t_a=1'b0;
t_b=1'b0;
t_s=1'b0;
#5
t_a=1'b0;
t_b=1'b0;
t_s=1'b1;
#5
t_a=1'b0;
t_b=1'b1;
t_s=1'b0;
#5
t_a=1'b0;
t_b=1'b1;
t_s=1'b1;
#5
t_a=1'b1;
t_b=1'b0;
t_s=1'b0;
#5
t_a=1'b1;
t_b=1'b0;
t_s=1'b1;
#5
t_a=1'b1;
t_b=1'b1;
t_s=1'b0;
#5
t_a=1'b1;
t_b=1'b1;
t_s=1'b1;

end 
endmodule