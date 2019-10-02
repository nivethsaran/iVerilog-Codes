module muxq(s,a,b,y);
input s,a,b;
output y;
wire t1,t2,t3,t4,t5;
not not1(t1,a);
not not2(t2,b);
xor xor1(t3,a,b);
and and1(t4,t3,s);
and and2(t5,t1,t2);
or or2(y,t4,t5);
endmodule