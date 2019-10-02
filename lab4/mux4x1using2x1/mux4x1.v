module mux4x1(a,b,c,d,s0,s1,y);
output y;
input a,b,c,d,s0,s1;
wire t1,t2;
mux2x1 mux1(s0,a,b,t1);
mux2x1 mux2(s0,c,d,t2);
mux2x1 mux3(s1,t1,t2,y);
endmodule
