module xnorgate(a,b,c,d,e,f,y);
input a,b;
output c,d,e,f,g,y;
nand nand1(c,a,a);
nand nand2(d,b,b);
nand nand3(e,c,d);
nand nand4(f,a,b);
nand nand5(y,e,f);
endmodule
                                                             