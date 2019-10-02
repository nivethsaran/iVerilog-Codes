module q2(x,y,out);

input x,y;
output reg [3:0] out; 

    always @(x,y)
    begin
        if(x==0)
        begin
        case(y)
            0:out=4'b1000;
            1:out=4'b0100;
            endcase
        end
        else
        begin
        case(y)
            0:out=4'b0010;
            1:out=4'b0001;
            endcase
        end
        
    end
    
endmodule