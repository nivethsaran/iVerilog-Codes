module demux1x2(xin, enable, yout);
input xin,enable;
output[1:0] yout;
reg[1:0] yout;
always @(xin or enable)
begin
if(enable==1)
case(xin)
1'b0:
yout=2'b10;
1'b1: 
yout=2'b01;
endcase
else
yout=2'b00;
end
endmodule