module halfadder(a,b,s,c);
input a,b;
output s,c;
xor sum1(s,a,b);
and carry(c,a,b);
endmodule
