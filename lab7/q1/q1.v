module q1(xy,out);

input [1:0] xy;
output reg [2:0] out;  

    always @(xy)
    begin
        case (xy)
            0:out=3'b001;
            1:out=3'b100;
            2:out=3'b010;
            3:out=3'b001;
        endcase
    end
    
endmodule