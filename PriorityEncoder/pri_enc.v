module pri_enc(in,out);
input [7:0] in;
output reg [2:0] out;
always @(in)
begin
if(in[7] == 1) out = 3'd7;
else if(in[6] == 1) begin out = 3'd6;end
else if(in[5] == 1) begin out = 3'd5;end
else if(in[4] == 1) begin out = 3'd4;end
else if(in[3] == 1)begin out = 3'd3;end
else if(in[2] == 1)begin out = 3'd2;end
else if(in[1] == 1)begin out = 3'd1;end
else if(in[0] == 1)begin out = 3'd0;end
else out = 3'dx;
end
endmodule 


