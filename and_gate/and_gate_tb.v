module and_gate_tb;
reg a,b;
wire c;
and_gate dut(.a(a),.b(b),.c(c));
initial begin
a=0;b=0;
#10 b=1;
#10 a=1;b=0;
#10 b=1;
#10 ;
end 
initial begin
$monitor($time, "a=%b, b=%b, c=%c", a, b ,c);
$dumpfile("test.vcd");
$dumpvars;
end
endmodule
