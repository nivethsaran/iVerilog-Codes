
module halfsubtractor(a,b,d,bo);
input a,b;
wire c;
output d,bo;
xor diff1(d,a,b);
not nota(c,a);
and carry(bo,c,b);
endmodule

