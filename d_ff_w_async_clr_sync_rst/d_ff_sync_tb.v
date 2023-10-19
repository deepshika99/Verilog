module d_ff_sync_tb;
reg d,clk,rst,clr;
wire q;

d_ff_sync uut(.d(d), .clk(clk),.rst(rst),.clr(clr),.q(q));

initial begin
clk=1'b0;
forever #10 clk=~clk;

end
initial begin
clr = 1;d=1;#40;
clr=0;#40;
rst=1; d=0;#40;
rst =0;#40;
#200 $finish;
end

endmodule
