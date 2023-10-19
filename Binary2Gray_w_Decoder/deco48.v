module deco48(input [3:0] in, output reg [15:0] out);

always @(in)
begin 
case(in)
4'b0000: out =16'b0000000000000001;
4'b0001: out =16'b0000000000000010;
4'b0010: out =16'b0000000000000100;
4'b0011: out =16'b0000000000001000;
4'b0100: out =16'b0000000000010000;
4'b0101: out =16'b0000000000100000;
4'b0110: out =16'b0000000001000000;
4'b0111: out =16'b0000000010000000;
4'b1000: out =16'b0000000100000000;
4'd9:    out =16'b0000001000000000;
4'd10:   out =16'b0000010000000000;
4'd11:   out =16'b0000100000000000;
4'd12:   out =16'b0001000000000000;
4'd13:   out =16'b0010000000000000;
4'd14:   out =16'b0100000000000000;
4'd15:   out =16'b1000000000000000;


default: out =16'dx;
endcase end
endmodule 
