`timescale 1ns / 1ps
module scan_ff(
input SE,SI,D,
input CLK,
output reg Q
);
always @ (posedge CLK) begin 
if(SE == 0 ) begin 
     Q <= D;
end
else begin 
     Q <= SI;
end
end
endmodule


