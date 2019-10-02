module repeat_example();
reg [3:0] opcode;
reg [15:0] data;
reg temp;
always @(opcode,data)
begin
if(opcode==10) begin
repeat (9) begin
#1 temp=data[15];
data=data<<1;
data[0]=temp;
end end end
initial begin
$display ("TEMP	DATA");
$monitor("%b 	%b",temp,data);
#1 data=16'hF0;
#1 opcode=10;
#10 opcode=0;
#1 $finish;
end
endmodule
