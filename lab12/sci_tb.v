module sci_tb;

reg [31:0] instr;
wire [2:0] op;
wire rw,mr,mw,regdst,alusrc,b,j,memtoreg;
wire [1:0] aluop;
wire [31:0] memloc;
wire[31:0] finalop;
wire[31:0] s0;
wire[31:0] s1;
wire[31:0] s2;
sci sci1(instr,op,rw,mr,mw,s0,s1,s2,aluop,regdst,alusrc,b,j,memtoreg,memloc,finalop);

initial 
begin

$monitor("%b %b %b %b %b %b %b %b %b %b %b %d %d %d %d %d ",instr,op,rw,mr,mw,aluop,regdst,alusrc,b,j,memtoreg,s0,s1,s2,memloc,finalop);

instr=32'b00000000011000010001000000100101;


end
endmodule