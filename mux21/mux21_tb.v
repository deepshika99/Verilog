
module sop11_tb;
reg i0,i1,i2,i3,s1,s2;
wire out;
integer f;
sop1 dut(.out(out),.s1(s1),.s2(s2), .i0(i0),.i1(i1),.i2(i2),.i3(i3));

initial begin 
s1=0;s2=1;i1=1;#10;
s1=1;s2=1;i3=1;#10;
f=$fopen("muxfile.txt","w");
$fwrite(f,s1);
$fwrite(f,s2);
$fwrite(f,i1);
$fwrite(f,i3);
end 
endmodule





