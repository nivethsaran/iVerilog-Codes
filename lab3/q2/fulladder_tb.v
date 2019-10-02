module fulladder_tb;
wire t_y,t_s1,t_c1,t_s2,t_c2;
reg t_a,t_b,t_c;

fulladder fa(.a(t_a),.b(t_b),.c(t_c),.s1(t_s1),.c1(t_c1),.s2(t_s2),.c2(t_c2));

initial
begin
$monitor("%b %b %b %b  %b  %b  %b",t_a,t_b,t_c,t_s1,t_c1,t_s2,t_c2);
$display("A B C S1 C1 S2 C2");
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