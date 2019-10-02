module dec2x4(xin, enable, yout);
input [1:0] xin; input enable;
output[3:0] yout;
reg[3:0] yout;
always @(xin or enable)
begin
if(enable==1)
case(xin)
2'b00: yout=4'b0001;
2'b01: yout=4'b0010;
2'b10: yout=4'b0100;
2'b11: yout=4'b1000;
endcase
else
yout=4'b0000;
end
endmodule