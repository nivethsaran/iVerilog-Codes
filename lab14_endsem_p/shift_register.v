 module shift_register(s1,d,clk,q);
  parameter n=3;

  input  s1,clk;
  input [n:0] d;

  output s0;
  output [n:0] q;

  genvar i;

  assign d[3]=s1;


  generate
  for(i=0; i<=n; i=i+1)
     d_ff U1(.d(d[i]),.q(q[i]),.clk(clk));
  endgenerate

  assign q[3]=d[2];
  assign q[2]=d[1];
  assign q[1]=d[0];
  assign q[0]=s0;



  endmodule