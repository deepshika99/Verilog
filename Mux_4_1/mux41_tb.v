module mux41_tb;
reg s0,s1,i1,i2,i3,i4;
wire out;
mux41 dut(.s0(s0), .s1(s1), .i1(i1), .i2(i2), .i3(i3), .i4(i4));

initial begin 
s0=1;s1=1;i4=1;#10;
i4=0;#10;


s0=1;s1=0;i3=1;#10;
i3=0;#10;

end
endmodule
