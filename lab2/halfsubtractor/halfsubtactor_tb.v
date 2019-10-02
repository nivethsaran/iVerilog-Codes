module halfsubtractor_tb;
wire t_d,t_bo;
reg t_a,t_b;
halfsubtractor hs(.a(t_a),.b(t_b),.d(t_d),.bo(t_bo));
initial
begin
$monitor("%b %b %b %b ",t_a,t_b,t_d,t_bo);
$display("A B Diff Borrow");
t_a=1'b0;
t_b=1'b0;
#5
t_a=1'b0;
t_b=1'b1;
#5
t_a=1'b1;
t_b=1'b0;
#5
t_a=1'b1;
t_b=1'b1;
end 
endmodule