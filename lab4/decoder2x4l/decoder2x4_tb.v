module decoder2x4_tb;
reg[1:0] din;
reg enable;
wire[3:0] dout;
decoder2x4 dc(.din(din),.enable(enable),.dout(dout));
initial
begin
    $monitor("%b %b %b",din,enable,dout);
    
    
    enable=1'b0;
    #5
    enable=1'b1;
    din=2'b00;
    
    #5
    enable=1'b1;
    din=2'b01;
    
    #5
    enable=1'b1;
    din=2'b10;
    
    #5
    enable=1'b1;
    din=2'b11;
    
end
endmodule