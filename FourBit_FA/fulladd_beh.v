module fulladd_beh(in1,in2,cin,sum,cout);
input in1,in2,cin;
output sum,cout;
reg sum, cout;
always@(in1 or in2 or cin)begin
sum=in1^in2^cin;
cout= (in1&in2)|(in1&cin)|(in2&cin);
end 
endmodule
