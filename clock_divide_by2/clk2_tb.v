module clk2_tb;
reg clk,rst;
wire clk2;

clk2 uut(.clk(clk),.rst(rst), .clk2(clk2));

initial begin 
clk = 1'b0;
forever #10 clk=~clk;
end

initial begin 
rst =1'b1;#50;
rst=1'b0;#100;

#500 $finish;
end

endmodule
