module xnorgate_tb;
wire t_y;
reg t_a,t_b;

//xnorgate my_gate(.a(t_a),.b(t_b),.y(t_y));
assign t_y=~(t_a^t_b);
initial
begin

$monitor("%b XNOR %b:%b",t_a,t_b,t_y);

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