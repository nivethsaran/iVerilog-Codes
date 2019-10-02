module xorgate(a,b,c,d,e,f,g,y);
input a,b;
output c,d,e,f,g,y;
nand nand1(c,a,a);
nand nand2(d,b,b);
nand nand3(e,c,d);
nand nand4(f,a,b);
nand nand5(g,e,f);
nand nand6(y,g,g); 
endmodule
