module clk2(rst,clk,clk2);
input rst,clk;
output reg clk2;

always @ (posedge clk)
begin 
if(rst) clk2<=1'b0;
else 
clk2<=~clk2;
end
endmodule

