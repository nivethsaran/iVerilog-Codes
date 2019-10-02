module sci(instr,op,rw,mr,mw,s0,s1,s2,aluop,regdst,alusrc,b,j,memtoreg,memloc,finalop);
input[31:0] instr;
output reg[2:0] op;
output reg rw,mr,mw,regdst,alusrc,memtoreg,b,j;
output reg [1:0] aluop;
output reg[31:0] s0;
output reg[31:0] s1;
output reg[31:0] s2;
output reg [31:0] finalop;
output reg [31:0] memloc;
// wire s0,s1,s2;
 always @(instr)
    begin
        s0=4;
        s1=2;
        s2=1;
        memloc=00;
        if(instr[31:26]==0)
        begin
            op=3'b001;
            rw=1'b1;
            mr=1'b0;
            mw=1'b0;
            regdst=0;
            alusrc=0;
            memtoreg=0;
            b=0;
            j=0;
            aluop=2'b10;
            s0=s1|s2;
            finalop=s0;
            end
        else if(instr[31:26]==2)
        begin
            op=3'b100;
            rw=1'b0;
            mr=1'b0;
            mw=1'b0;
            aluop=2'b00;
            finalop=0;
        end
        else
        begin
            op=3'b010;
            if(instr[31:26]==35)
            begin
            rw=1'b1;
            mr=1'b1;
            mw=1'b0;
            aluop=2'b00;
            s0=s1+32;
            finalop=s0;
            end
            else if(instr[31:26]==43)
            begin
            rw=1'b1;
            mr=1'b0;
            mw=1'b1;
            aluop=2'b00;
            memloc=4;
            finalop=s0;
            end
            else if(instr[31:26]==4)
            begin
            rw=1'b0;
            mr=1'b0;
            mw=1'b0;
            finalop=s1-s2;
            aluop=2'b01;
            end
        end
    end
endmodule