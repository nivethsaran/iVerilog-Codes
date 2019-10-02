module q3_tb;

reg [5:0] f,o;
wire [7:0] cs;

q3 question(.f(f),.o(o),.cs(cs));

initial 
begin
$monitor("%b %b %b",f,o,cs);
$display("fncode opcode signal o/p");    
o=6'b000000;
f=6'b100000;
#5
o=6'b000000;
f=6'b100010;
#5
o=6'b100011;
f=6'b000000;
#5
o=6'b101011;
f=6'b000000;
#5
o=6'b000100;
f=6'b000000;
#5
o=6'b000010;
f=6'b000000;

end
      
endmodule