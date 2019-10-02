module muxq_tb  ;
reg a,b,s;
wire y;
muxq m1(s,a,b,y);
initial
begin
    $monitor("%b  %b  %b  %b  ",s,a,b,y);
    $display("a  b  s  y");

s=1'b0;
a=1'b0;
b=1'b0;
#5
s=1'b0;
a=1'b0;
b=1'b1;
#5
s=1'b0;
a=1'b1;
b=1'b0;
#5
s=1'b0;
a=1'b1;
b=1'b1;
#5
s=1'b1;
a=1'b0;
b=1'b0;
#5
s=1'b1;
a=1'b0;
b=1'b1;
#5
s=1'b1;
a=1'b1;
b=1'b0;
#5
s=1'b1;
a=1'b1;
b=1'b1;

end
endmodule
