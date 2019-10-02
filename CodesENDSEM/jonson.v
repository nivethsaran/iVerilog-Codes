module johnson_counter(
    Clock,
    Reset,
    Count_out
    );
    //what are the input ports and their sizes.
    input Clock;
    input Reset;
    //what are the output ports and their sizes.
    output [3:0] Count_out;
    //Internal variables
    reg [3:0] Count_temp;

    //Whenever the Clock changes from 0 to 1(positive edge) or 
    //a change in Reset, execute the always block.
    always @(posedge(Clock) or Reset)
    begin
        if(Reset == 1'b1)   begin  //when Reset is high 
            Count_temp = 4'b0001;   end  //The Count value is reset to "0000".
        else if(Clock == 1'b1)  begin  //When the Clock is high
            //Left shift the Count value and at the same time
            //negate the least significant bit.
            Count_temp = {Count_temp[2:0],~Count_temp[3]};  end 
    end
    
    //The Count value is assigned to final output port.
    assign Count_out = Count_temp;
    
endmodule
module ring_tst;
reg clock,reset;
wire [3:0]count_out;
johnson_counter a1(clock,reset,count_out);
initial
begin
$monitor("At time %2d, Clock:%b reset:%b R:%b",$time,clock,reset,count_out);
clock = 1'b1;
reset = 1'b0;
#100 $finish;
end
always #5 clock=~clock;
always #30 reset=~reset;
endmodule