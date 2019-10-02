module q3(f,o,cs);
input[5:0] f,o;
output reg[7:0] cs;
 always @(f,o)
    begin
        if(o==0)
        begin
        case(f)
            32:cs=8'b10100000;
            34:cs=8'b10100000;
            endcase
        end
        else
        begin
        case(o)
            35:cs=8'b11010100;
            43:cs=8'b11001000;
            4: cs=8'b00000010;
            2: cs=8'b00000001;
            endcase
        end
        
    end
endmodule