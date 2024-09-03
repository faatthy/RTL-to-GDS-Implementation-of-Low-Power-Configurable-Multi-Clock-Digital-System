`timescale 1us / 10ns
module ALU_16bit_tb();
reg [15:0] A,B;
wire [15:0]ALU_OUT;
reg clk;
reg [3:0] ALU_FUN;
wire Arith_Flag,Logic_Flag,CMP_Flag,Shift_Flag;

localparam T=10;
always 
#(T/2) clk=~clk;

integer k;
initial
begin 
clk=1'b0;
A=16'd16;
B=16'd4;
@(negedge clk);
ALU_FUN=4'b0000;
$display("operation is %4b",ALU_FUN);
for(k=0;k<15;k=k+1)
begin 
@(negedge clk) ALU_FUN=ALU_FUN+1;
$display("operation is %4b",ALU_FUN);
end
#10 $stop;
end
initial
begin
$monitor("time : %0t \t A=%0d \t B=%0d \t ALU_OUT=%0b \t Arith_Flag=%0b \t Logic_Flag=%0b \t CMP_Flag=%0b \t Shift_Flag=%0b",$time,A,B,ALU_OUT,Arith_Flag,Logic_Flag,CMP_Flag,Shift_Flag);
end
endmodule 

