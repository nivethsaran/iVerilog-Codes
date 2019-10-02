module evaluation_tb;

reg[31:0]instr;
wire[2:0]op;
wire[2:0]wrw;
wire[1:0]aluop;
evaluation question(instr,op,aluop,wrw);

initial 
begin
$display("instr                            op  aluop rw-mr-mw");
$monitor("%b %b  %b   %b  %b  %b",instr,op,aluop,wrw[2],wrw[1],wrw[0]);

instr=32'b00000010001100101000000000100000;
#5
instr=32'b10001110001100000000000000100000;
#5
instr=32'b10101110001100000000000000100000;
#5
instr=32'b00010010000100010000000011001000;
#5
instr=32'b00001000000000000000001111101000;

end
endmodule