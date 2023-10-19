module comparator(a,b, eq,gt,ls);
input [3:0] a,b;
output reg eq,gt,ls;

always @ (a or b)
begin

if (a>b)
begin
gt = 1;eq=0;ls=0;
end
else if (a<b)
begin
gt = 0; eq = 0; ls = 1;
end
else if(a ==b)
begin
gt = 0; eq=1; ls=0;
end
else
begin
gt = 0;eq = 0; ls = 0;
end

end

endmodule
