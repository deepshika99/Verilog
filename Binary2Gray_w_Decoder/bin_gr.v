module bin_gr(in_bin,out_gray, deco_out);
input [3:0] in_bin;
 output [3:0] out_gray;
//reg out_gray;
output [15:0] deco_out;

deco48 d1(in_bin, deco_out);

assign out_gray[3] = in_bin[3];
assign out_gray[2]= deco_out[4]|deco_out[5]|deco_out[6]|deco_out[7]|deco_out[8]|deco_out[9]|deco_out[10]|deco_out[11];
assign out_gray[1] = deco_out[2]|deco_out[3]|deco_out[4]|deco_out[5]|deco_out[10]|deco_out[11]|deco_out[12]|deco_out[13];
assign out_gray[0] = deco_out[1]|deco_out[2]|deco_out[5]|deco_out[6]|deco_out[10]|deco_out[11]|deco_out[14]|deco_out[13];

endmodule
