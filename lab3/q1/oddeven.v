module oddeven(a,b,c,d,y);
input a,b,c;
output y,d;
xor xor1(d,a,b);
xor xor2(y,c,d);
endmodule