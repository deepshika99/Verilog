module comparator_tb;

reg [3:0] a,b;
wire eq, gt,ls;

comparator uut(.a(a), .b(b), .eq(eq), .gt(gt), .ls(ls));

initial begin 
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = $random%15;
b= $random%15; #10;
a = 13;
b= 13; #10;
end

endmodule

