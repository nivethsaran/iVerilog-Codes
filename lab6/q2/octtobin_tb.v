module octtobin_tb;

    reg [7:0] oct;
    wire [2:0] bin;

octtobin octtobin(.oct(oct),.bin(bin));

initial 
begin
$monitor("%b %b",oct,bin);
        
oct=8'b10000000;
#10
oct=8'b01000000;
#10
oct=8'b00100000;
#10
oct=8'b00010000;
#10
oct=8'b00001000;
#10
oct=8'b00000100;
#10
oct=8'b00000010;
#10
oct=8'b00000001;
#10
oct=8'b00000000;
end
      
endmodule