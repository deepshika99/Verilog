module four_FA_tb;
reg [3:0]in1;
reg [3:0]in2
reg cin;
wire [3:0]sum;
wire cout;
four_FA dut(.in1(in1),.in2(in2),.cin(cin),.sum(sum),.cout(cout));
initial begin
in1=4'b0000;in2=4'b0000;cin=1'b1;#10;
in1=4'b0010;in2=4'b0011;cin=1'b0;#10;
in1='d3;in2='d7;#10;
in1='d7;in2='d7;#10;
in1='d10;in2='d7;#10;
in1='d13;in2='d6;cin='d1;#10;
end
endmodule
