module seven_seg(num, out);
input [3:0] num;
output reg [6:0] out;

always @(num)
begin 
case(num)
'd0: out = 7'b1111110;
'd1: out = 7'b0110000;
'd2: out = 7'b1101101;
'd3: out = 7'b1111001;
'd4: out = 7'b0110011;
'd5: out = 7'b1011011;
'd6: out = 7'b1011111;
'd7: out = 7'b1110000;
'd8: out = 7'b1111111;
'd9: out = 7'b1110011;
default:out = 7'dx;
endcase
end
endmodule

