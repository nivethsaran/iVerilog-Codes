module notgate(a,y);
input a;
output y;
nand nand1(y,a,a);
endmodule
