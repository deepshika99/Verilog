module mux41(i1,i2,i3,i4,s0,s1,out);
input i1,i2,i3,i4,s0,s1;
output out;

assign out = (~s0 & ~s1 & i1)| (~s0 & s1 & i2) | (s0 & ~s1 & i3) | (s0 & s1 & i4);

endmodule 
