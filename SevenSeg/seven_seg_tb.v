module seven_seg_tb;
reg [3:0] num;
wire [6:0] out;
seven_seg uut(.num(num), .out(out));
initial begin
num=4'd0;#10;
num=4'd1;#10;
num=4'd2;#10;
num=4'd3;#10;
num=4'd4;#10;
num=4'd5;#10;
num=4'd6;#10;
num=4'd7;#10;
num=4'd8;#10;
num=4'd9;#10;
end
endmodule

