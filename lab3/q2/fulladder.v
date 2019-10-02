module fulladder(a,b,c,s1,c1,s2,c2);
input a,b,c;
output s2,c2,s1,c1;
wire temp;
halfadder ha1(a,b,s1,c1);
halfadder ha2(s1,c,s2,temp);
or or1(c2,c1,temp);
endmodule