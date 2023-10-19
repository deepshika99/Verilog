module four_FA(in1,in2,cin, sum,cout);
input [3:0]in1;
input [3:0]in2;
input cin;
output [3:0]sum, cout;
wire c0,c1,c2;
fulladd_beh FA0(in1[0],in2[0],cin,sum[0],c0);
fulladd_beh FA1(in1[1],in2[1],c0,sum[1],c1);
fulladd_beh FA2(in1[2],in2[2],c1,sum[2],c2);
fulladd_beh FA3(in1[3],in2[3],c2,sum[3],cout);
endmodule


