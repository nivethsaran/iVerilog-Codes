module enc4x2(xin, yout);
input [3:0] xin; 
output[1:0] yout;
reg[1:0] yout;
always @(xin)
begin
case(xin)
4'b1000: yout=2'b00;
4'b0100: yout=2'b01;
4'b0010: yout=2'b10;
4'b0001: yout=2'b11;
endcase
end
endmodule