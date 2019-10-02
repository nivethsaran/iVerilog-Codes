module evaluation_tb;

reg [31:0] instr;
wire [2:0] op;
wire rw,mr,mw;
wire [1:0] aluop;
wire [31:0] memloc;
wire[31:0] finalop;
wire[31:0] s0;
wire[31:0] s1;
wire[31:0] s2;
evaluation question(instr,op,rw,mr,mw,s0,s1,s2,aluop,memloc,finalop);

initial 
begin
$display("instr                             op rw mr mw aluop         s0      s1      s2      memloc finalop");
$monitor("%b %b  %b  %b  %b  %b  %d %d %d %d %d ",instr,op,rw,mr,mw,aluop,s0,s1,s2,memloc,finalop);

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