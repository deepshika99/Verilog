module d_ff_sync(d, clk, rst, clr, q);

input d,clk,rst,clr;
output reg q;

always @ (posedge clk or clr)
begin 
if(rst|clr)
q<=1'b0;
else
q<=d;
end

endmodule

