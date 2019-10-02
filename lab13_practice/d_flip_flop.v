module d_flip_flop ( din ,clk ,reset ,dout );

output dout ;
reg dout;

input din ;
input clk ;
input reset ; 

always @ (posedge clk)
begin
 if (reset)
  dout <= 1;
 else
  dout <= din;
end

endmodule


module mod10bit2(out,rst,clk);
output [3:0]out;
input clk,rst;
reg [3:0]out;
always @(posedge clk)
begin
if(rst|out==4'b1001)
out<=4'b0000;
else
out<=out+1;
end
endmodule


module df1(q,d,c);
output q;
input d,c;
reg q;
initial
q=1'b1;
always@(posedge c)
q=d;
endmodule

// RING COUNTER
module ringcounter(q,clk);
inout [3:0]q;
input clk;
df1 f1(q[0],q[3],clk);
df2 f2(q[1],q[0],clk);
df2 f3(q[2],q[1],clk);
df2 f4(q[3],q[2],clk);
endmodule



module df1(q,d,c);
output q;
input d,c;
reg q;
initial
q=1'b1;
always@(posedge c)
q=d;
endmodule

// JOHNSON COUNTER
module johnsoncounter(q,clk);
inout [3:0]q;
input clk;
wire w;
not(w,q[3]);
df1 f1(q[0],w,clk);
df2 f2(q[1],q[0],clk);
df2 f3(q[2],q[1],clk);
df2 f4(q[3],q[2],clk);

endmodule




module dff(q,clk,d);
output q;
input clk,d;
reg q;
initial
q<=0;
always @(posedge clk)
begin
q<=d;
end
endmodule

// TEST BENCH
module dfftest1;
reg clk,d;
wire q;
dff f1(q,clk,d);
initial
begin
clk=0;
d=0;
end
always #75 clk=~clk;
always #150 d=~d;
endmodule




module tff(q,clk,d,t);
output q;
input clk,d,t;
reg q;
initial
q=0;
always @(posedge clk)
begin
if(t)
q<=~d;
else
q<=d;
end
endmodule

// TEST BENCH
module tfftest;
reg d,clk,t;
wire q;
tff t2(q,clk,d,t);
initial
begin
clk=0;
d=0;
t=0;
end
always #50 clk=~clk;
always #100 d=~d;
always #200 t=~t;

endmodule



// File : Design of Serial In -
Serial Out Shift Register using d_flip
flop.v
module siso ( din ,clk ,reset ,dout );
output dout ;
input din ;
input clk ;
input reset ;
wire [2:0]s;
d_flip_flop u0 (.din(din),
.clk(clk),
.reset(reset),
.dout(s[0]));
d_flip_flop u1 (.din(s[0]),
.clk(clk),
.reset(reset),
.dout(s[1]));
d_flip_flop u2 (.din(s[1]),
.clk(clk),
.reset(reset),
.dout(s[2]));
d_flip_flop u3 (.din(s[2]),
.clk(clk),
.reset(reset),
.dout(dout));
endmodule
// -------------- D flip flop design -
-----------------------
//------------------------------
--------------------------------
---------------
//
// Title : d_flip_flop
// Design : upload_design1
// Author : Naresh Singh Dobal
// Company : nsd
//
//------------------------------
--------------------------------
---------------
//
// File : d_flip_flop.v
module d_flip_flop ( din ,clk ,reset
,dout );
output dout ;
reg dout;
input din ;
input clk ;
input reset ;
always @ (posedge clk)
begin
if (reset)
dout <= 1;
else
dout <= din;
end
endmodule


Serial in parallel out

// File : Serial IN Parallel OUT
Shift Register using Behavior
Modeling Style.v
module SIPO ( din ,clk ,reset ,dout );
output [3:0] dout ;
wire [3:0] dout ;
input din ;
wire din ;
input clk ;
wire clk ;
input reset ;
wire reset ;
reg [3:0]s;
always @ (posedge (clk)) begin
if (reset)
s <= 0;
else begin
s[3] <= din;
s[2] <= s[3];
s[1] <= s[2];
s[0] <= s[1];
end
end
assign dout = s;
endmodule

// Parallel in parallel out

// File : parallel IN - Parallel
OUT Shift Register using Behavior
Modeling Style.v
module PIPO ( din ,clk ,reset ,dout );
output [3:0] dout ;
reg [3:0] dout ;
input [3:0] din ;
wire [3:0] din ;
input clk ;
wire clk ;
input reset ;
wire reset ;
always @ (posedge (clk)) begin
if (reset)
dout <= 0;
else
dout <= din;
end
endmodule

// Parallel in serial out

// File : Parallel IN - Serial OUT
// Shift Register.v
module parallel_in_serial_out ( din
,clk ,reset ,load ,dout );
output dout ;
reg dout ;
input [3:0] din ;
wire [3:0] din ;
input clk ;
wire clk ;
input reset ;
wire reset ;
input load ;
wire load ;
reg [3:0]temp;
always @ (posedge (clk)) begin
if (reset)
temp <= 1;
else if (load)
temp <= din;
else begin
dout <= temp[3];
temp <= {temp[2:0],1'b0};
end
end
endmodule