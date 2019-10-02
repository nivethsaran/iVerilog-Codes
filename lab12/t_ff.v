
  module t_ff (tin,clk,reset,dout); 
  input tin, clk, reset ; 
  output dout;
  reg dout;
   always @ ( posedge clk or negedge reset)
  if (~reset) begin
    dout = 1'b0;
  end 
  else if (tin==1)
  begin
    dout =  ~tin;
  end
  else if(tin==0)
    dout=tin;

  endmodule



























// module d_ff(input wire clk,
// input wire T,
// input Rst,
// input wire Q
// output reg Qout);























// module t_ff ( din ,clk ,reset ,dout );

// output dout ;
// reg dout;

// input din ;
// input clk ;
// input reset ; 

// always @ (posedge clk)
// begin
//  if (reset)
//   dout <= 1;
//  else
//   dout <= din;
// end

	

 


// module t(q,q1,t,c);
// output q,q1;
// input t,c;
// reg q,q1;
// initial 
//    begin 
// 	q=1'b1;
// 	q1=1'b0;
//    end
//  always @ (c)
// 	begin
// 		if(c)
// 			 begin
// 			   if (t==1'b0) begin q=q; q1=q1; end
// 			   else begin q=~q; q1=~q1; end
// 			 end
// 	 end
// endmodule

