module q2_tb;

    reg x,y;
    wire [3:0] out;

q2 comp(.x(x),.y(y),.out(out));

initial 
begin
$monitor("%b %b %b",x,y,out);
        
x=1'b0;
y=1'b0;
#5
x=1'b0;
y=1'b1;
#5
x=1'b1;
y=1'b0;
#5
x=1'b1;
y=1'b1;

end
      
endmodule