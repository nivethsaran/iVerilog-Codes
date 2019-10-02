module bcdto7segen_tb;

    reg [9:0] bcd;
    wire [6:0] seg;

bcdto7segen bcdto7seg1(.bcd(bcd),.seg(seg));

initial 
begin
$monitor("%b %b",bcd,seg);
        
bcd=10'b1000000000;
#10
bcd=10'b0100000000;
#10
bcd=10'b0010000000;
#10
bcd=10'b0001000000;
#10
bcd=10'b0000100000;
#10
bcd=10'b0000010000;
#10
bcd=10'b0000001000;
#10
bcd=10'b0000000100;
#10
bcd=10'b0000000010;
#10
bcd=10'b0000000001;
end
      
endmodule