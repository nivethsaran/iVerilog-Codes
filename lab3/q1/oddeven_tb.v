module oddeven_tb;
wire t_y,t_d;
reg t_a,t_b,t_c;

oddeven pg(.a(t_a),.b(t_b),.c(t_c),.d(t_d),.y(t_y));

initial
begin
$monitor("%b %b %b %b %b ",t_a,t_b,t_c,t_d,t_y);
$display("A B C D Y");
t_a=1'b0;
t_b=1'b0;
t_c=1'b0;
#5
t_a=1'b0;
t_b=1'b0;
t_c=1'b1;
#5
t_a=1'b0;
t_b=1'b1;
t_c=1'b0;
#5
t_a=1'b0;
t_b=1'b1;
t_c=1'b1;
#5
t_a=1'b1;
t_b=1'b0;
t_c=1'b0;
#5
t_a=1'b1;
t_b=1'b0;
t_c=1'b1;
#5
t_a=1'b1;
t_b=1'b1;
t_c=1'b0;
#5
t_a=1'b1;
t_b=1'b1;
t_c=1'b1;

end
endmodule