module alu(out,in,out,sel);
input [3:0]in,out,sel;
output [7:0]out;
always@(sel,a,b)
begin
 case(sel)
 4'b0000:out=a+b; 
 4'b0001:out=a-b; 
 4'b0010:out=a*b; 
 4'b0011:out=a/b; 
 4'b0100:out=a&b; 
 4'b0101:out=a|b; 
 4'b0110:out=a^b; 
 4'b0111:out=a<<b;
 4'b1000:out=a>>b;
 4'b1001:out=b<<a;
 4'b1010:out=b>>a;
 4'b1011:out=!a; 
 4'b1100:out=!b; 
 endcase
end
endmodule
