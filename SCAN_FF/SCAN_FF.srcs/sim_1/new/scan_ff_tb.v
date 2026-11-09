`timescale 1ns / 1ps
module scan_ff_tb;
reg SE,SI,D,CLK;
wire Q;
scan_ff UUT(
.CLK(CLK),
.D(D),
.SE(SE),
.SI(SI),
.Q(Q)
);
integer i;
always #5 CLK = ~CLK;
initial begin 
CLK = 1'b0;
SE = 1'b0;
SI = 1'b0; D = 1'b0;
// teseting the input 
for(i = 0; i < 2; i = i + 1) begin 
    {SI,D} = i;
    #10;
    end
SE = 1'b1;
#10;
$finish;
end
endmodule
 
 
 

    