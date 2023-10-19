module mux21(s0,i1,i2,out);
input s0,i1,i2;
output reg out;
wire o1,o2;
always @(i2 or i2 or s0)
begin
out = (s0 & i1) | (~s0 & i2);
end
endmodule
