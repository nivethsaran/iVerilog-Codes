module bcdto7segen(bcd,seg);

input [9:0] bcd;
output [6:0] seg;
reg [6:0] seg;  

    always @(bcd)
    begin
        case (bcd)
            10'b1000000000 : seg = 7'b1111110;
            10'b0100000000 : seg = 7'b0110000;
            10'b0010000000 : seg = 7'b1101101;
            10'b0001000000 : seg = 7'b1111001;
            10'b0000100000 : seg = 7'b0110011;
            10'b0000010000 : seg = 7'b1011011;
            10'b0000001000 : seg = 7'b1011111;
            10'b0000000100 : seg = 7'b1110000;
            10'b0000000010 : seg = 7'b1111111;
            10'b0000000001 : seg = 7'b1111011;
            default : seg = 7'b0000000; 
        endcase
    end
    
endmodule