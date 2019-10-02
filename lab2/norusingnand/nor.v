module norgate(a,b,c,d,e,y);
input a,b;
output c,d,e,y;
nand nand1(c,a,a);
nand nand2(d,b,b);
nand nand3(e,c,d);
nand nand4(y,e,e);
endmodule
