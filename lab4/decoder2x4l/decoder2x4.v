module decoder2x4(din,enable,dout);
input[1:0] din;
input enable;
output[3:0] dout;
reg[3:0] dout;
always @(din,enable)
begin
    if(enable)
    begin
       case (din)
       2'b00:dout=4'b0001;
       2'b01:dout=4'b0010;
       2'b10:dout=4'b0100;
       2'b11:dout=4'b1000;
       endcase 
    end
    else
    begin
        dout=4'b0000;
    end
end
endmodule
