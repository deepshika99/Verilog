module pri_enc_tb;
reg [7:0] in;
wire [2:0] out;

pri_enc uut(.in(in), .out(out));

initial begin 
in= 8'b00000001;#10;
in= 8'b00000011;#10;
end
endmodule
