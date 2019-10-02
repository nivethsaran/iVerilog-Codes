module octtobin(oct,bin);
input[7:0] oct;
output [2:0] bin;
reg [2:0]bin;
always @ (oct)
    begin
case (oct)
128 : bin = 0;
64 : bin =  1;
32 : bin =  2;
16 : bin =  3;
8 : bin =   4;
4 : bin =   5;
2 : bin =   6;
1 : bin =   7;
           
           
           endcase
    end
endmodule
