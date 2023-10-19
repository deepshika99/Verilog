module dff( clk, d,rst,
			q,qbar);
	input clk,d,rst;
	output reg q,qbar;
always @(posedge clk)
begin
if(!rst)
begin
q=d;
qbar= ~q;
end
else 
begin
q=0;
qbar=0;
end

end

endmodule 
