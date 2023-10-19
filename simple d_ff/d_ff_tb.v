module d_ff_tb;
reg d;
reg clk;
reg rst;
wire q,qbar;
dff dut(.rst(rst),.d(d),.q(q),.clk(clk), .qbar(qbar));

initial begin
clk = 1'b0;
forever #10 clk =~clk;
end

initial begin  
rst =1;d=1;#50;
d=0;#30;
rst =0;d=1;#50;
d=0;#30;
#100 $finish;
end 

endmodule 
