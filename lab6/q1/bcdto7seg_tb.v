module bcdto7seg_tb;

    reg [3:0] bcd;
    wire [6:0] seg;

bcdto7seg bcdto7seg1(.bcd(bcd),.seg(seg));

initial 
begin
$monitor("%b %b",bcd,seg);
        
bcd=4'b0000;
#5
bcd=4'b0001;
#5
bcd=4'b0010;
#5
bcd=4'b0011;
#5
bcd=4'b0100;
#5
bcd=4'b0101;
#5
bcd=4'b0110;
#5
bcd=4'b0111;
#5
bcd=4'b1000;
#5
bcd=4'b1001;
end
      
endmodule