module andgate(a,b,y);
input a,b,c;
output y;
nandgate nand1(a,b,c);
nandgate nand2(c,c,y);
endmodule
