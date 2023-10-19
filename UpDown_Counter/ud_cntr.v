module counter( clock, reset, load, up, load_data, count);
input clock, reset, load, up;
input [3:0] load_data;
output [3:0] count;
reg [3:0] count;
always @ (posedge clock)
case({reset, load, up})
3'b100: count = 4'b0;
3'b010: count = load_data;
3'b001: count = count+1;
3'b000: count = count -1;
default: count =4'bx;
endcase 
endmodule 

