module orgate(a,b,y);
input a,b,c,d;
output y;	
nandgate nand1(a,a,c);
nandgate nand2(b,b,d);
nandgate nand_actual(c,d,y);


endmodule

