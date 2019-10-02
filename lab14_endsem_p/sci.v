module evaluation(instr,op,aluop,wrw);
input[31:0]instr;
output reg[2:0]op;
output reg[2:0]wrw;
output reg[1:0]aluop;

 always @(instr)
    begin
        if(instr[31:26]==0)
        begin
            op=3'b001;
      wrw=3'b100;
            aluop=2'b10;
        end
        else if(instr[31:26]==2)
        begin
            op=3'b100;
      wrw=3'b000;
            aluop=2'b00;
        end
        else
        begin
            op=3'b010;
            if(instr[31:26]==35)
            begin
      wrw=3'b110;
            aluop=2'b00;
            end
            else if(instr[31:26]==43)
            begin
      wrw=3'b101;
            aluop=2'b00;
            end
            else if(instr[31:26]==4)
            begin
      wrw=3'b000;
            aluop=2'b01;
            end
        end
    end
endmodule


