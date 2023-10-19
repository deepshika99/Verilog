module bin_gr_tb;
reg [3:0] in_bin;
wire [3:0] out_gray;
wire [15:0] deco_out;
bin_gr uut(.in_bin(in_bin), .out_gray(out_gray), .deco_out(deco_out));

initial begin 
in_bin = 4'd0;
#50 $finish;
end
always begin #24 in_bin[3]=~in_bin[3]; end
always begin #12 in_bin[2]=~in_bin[2]; end
always begin #6 in_bin[1]=~in_bin[1]; end
always begin #3 in_bin[0]=~in_bin[0]; end
endmodule
