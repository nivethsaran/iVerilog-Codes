module siso (C, SI, SO); 
input C;
input [7:0] SI; 
output [7:0] SO; 
reg [7:0] SO; 
reg [7:0] tmp;  
always @(*) 
    begin 
	if(C==1)
	begin
	  tmp[7] = SI[0]; 
	   $display("so %b",tmp );
      tmp = tmp >> 1;
	  end
    end 
   
endmodule 

module sisot_b;
reg C;
reg [7:0] SI; 
wire [7:0] SO;

siso mysiso(C,SI,SO);
initial
begin
$monitor("c=%b  ",C);
C=1'b 1;
SI=8'b 10110100;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;
#1
C=1'b 1;
SI=SI>>1;
#1
C=1'b 0;

end 
endmodule
