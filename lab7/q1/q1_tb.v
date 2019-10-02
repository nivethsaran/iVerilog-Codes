module q1_tb;

    reg [1:0] xy;
    wire [2:0] out;

q1 comp(.xy(xy),.out(out));

initial 
begin
$monitor("%b %b",xy,out);
        
xy=2'b00;
#5
xy=2'b01;
#5
xy=2'b10;
#5
xy=2'b11;

end
      
endmodule