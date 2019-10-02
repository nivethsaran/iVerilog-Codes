module sr_ff(input wire clk,
    input wire S,
    input wire R,
    input wire Qin,
    input Rst,
    output reg Qout,
    output reg QoutBar
    );

always @(posedge clk or negedge Rst) 
begin
if((!S)&&(!R))
begin
Qout=Qin;
QoutBar=!Qout;
end
else if((!S)&&R)
begin
    Qout=0;
    QoutBar=1;
end
else if(S&&(!R))
begin
    Qout=1;
    QoutBar=0;
end
else
begin
    Qout=0;
    QoutBar=0;
end
end
endmodule