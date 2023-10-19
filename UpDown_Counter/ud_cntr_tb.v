module udcntr_tb;

reg clock, reset, load, up;
reg [3:0] load_data;
wire [3:0] count;

counter dut(.clock(clock), .reset(reset), .load(load), .up(up), .load_data(load_data), .count(count));

initial begin 
clock = 1'b0;
forever #10 clock = ~clock;
end 

initial begin

reset =1'b1; #20;
reset = 1'b0; load = 1'b1; load_data = 4'd7;up= 0;  #20;
load =1'b0; up= 1'b1; #100;
up =1'b0; #100;

#300 $finish;
end 
endmodule 
