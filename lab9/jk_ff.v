module sr_ff(input wire clk,
    input wire J,
    input wire K,
    input wire Qin,
    input Rst,
    output reg Qout,
    output reg QoutBar
    );

always @(posedge clk or negedge Rst) 
begin
if((!J)&&(!K))
begin
Qout=Qin;
QoutBar=!Qout;
end
else if((!J)&&K)
begin
    Qout=0;
    QoutBar=1;
end
else if(J&&(!K))
begin
    Qout=1;
    QoutBar=0;
end
else
begin
    Qout=!Qout;
    QoutBar=!QoutBar;
end
end
endmodule