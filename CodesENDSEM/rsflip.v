
module rsff(input wire clock,
input wire R,
input wire S,
input wire Qin,
output reg Qout,
output reg Qoutbar);

always @ (posedge clock)
begin
if ((!S) &&(!R))
begin
Qout = Qin;
Qoutbar = (!Qin);
end
else if((!S) &&(R))
begin
Qout = 0;
Qoutbar = 1;
end
else if((S) &&(!R))
begin
Qout = 1;
Qoutbar = 0;
end
else
begin
Qout = 1'bx;
Qoutbar = 1'bx;
end
end
endmodule


module rsff_tb;
wire Qout, Qoutbar;
reg R, S, Qin, clock;
rsff m(clock,R,S,Qin,Qout,Qoutbar);


initial
begin
	$monitor("S=%b, R=%b, Qin=%b, Qout=%b, Qoutbar=%b\n",S,R,Qin,Qout,Qoutbar);
	clock=0;
	clock=1;
	S = 1'b0;
	R = 1'b0;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	S = 1'b0;
	R = 1'b0;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	S = 1'b0;
	R = 1'b1;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	S = 1'b0;
	R = 1'b1;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	S = 1'b1;
	R = 1'b0;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	S = 1'b1;
	R = 1'b0;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	S = 1'b1;
	R = 1'b1;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	S = 1'b1;
	R = 1'b1;
	Qin = 1'b1;
	clock=0;
end
endmodule