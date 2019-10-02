module notgate_tb;
wire t_y;
reg t_a;

notgate my_gate(.a(t_a),.y(t_y));
initial
begin

$monitor("%b:%b",t_a,t_y);
$display("A B C D E F G Y");
t_a=1'b0;

#5

t_a=1'b1;


end
endmodule
