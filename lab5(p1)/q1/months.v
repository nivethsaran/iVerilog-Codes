module months(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,o0,o1,o2);
input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11;
output o0,o1,o2;
wire t1,t2,t3,t4,t5,t6;
assign o0=i1;
or or1(t1,i3,i5);
or or2(t2,i8,i10);
or or3(o1,t1,t2);
or or4(t3,i0,i2);
or or5(t4,i4,i6);
or or6(t5,i7,i9);
or or7(t6,t5,i11);
or or8(t7,t3,t4);
or or9(o2,t6,t7);
endmodule