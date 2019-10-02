module tb();

  parameter n=3;
  reg [n:0] d;
  reg s1,clk;

  wire [n:0] q;



  shift_register UUT(.s1(s1),.d(d),.clk(clk),.q(q));

  initial begin

  d=4'b0000;
  clk=0;
  end


always
begin:clok
#10 clk=~clk; s1=1;

end
endmodule