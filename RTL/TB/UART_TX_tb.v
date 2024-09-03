`timescale 1us/1us
module UART_tb();
reg [7:0]P_Data;
reg clk,rst,data_valid,parity_en;
wire TX_OUT,busy;

parameter T=(1/115.2)*1000 ;
localparam parity_type=0;

UART_TX_TOP #(.parity_type(parity_type)) DUT(
    .rst(rst),
    .clk(clk),
    .data_valid(data_valid),
    .parity_en(parity_en),
    .P_Data(P_Data),
    .TX_OUT(TX_OUT),
    .busy(busy)
);

always
#(T/2) clk=~clk;

initial
begin
  initialize();
  $display("test case 1 even parity ");
  data_operation(8'b11001011);
  check(11'b01101001111);
   $display("test case 2 even parity");  
  data_operation(8'b01010010);
  check(11'b00100101011);
  $display ("test case 3 even parity equal 0 ");
  data_operation(8'b10110010);
  check(11'b00100110101);
  $display("test case 4 stop state go to start state if data valid equal 1");
check_repeat_start(8'b11000110,8'b01010010,11'b00110001101,11'b00100101011);
   $display("test case 5 no parity");
   parity_en=1'b0;
   data_operation(8'b10100011);
   check(11'b01100010111);
  #20 $stop;
end

task initialize;
begin
  clk=1'b0;
  rst=1'b1;
  parity_en=1'b1;
  data_valid=1'b0;
end
endtask
task reset;
begin
  rst=1'b1;
  @(negedge clk);
  rst=1'b0;
  @(negedge clk);
  rst=1'b1;
end
endtask


task data_operation;
input reg [7:0] data_oper;
begin
  reset();
  data_valid=1'b1;
  P_Data=data_oper;
  @(negedge clk);
  data_valid=1'b0;
end
endtask


task check;
input reg [10:0] expec;
integer i;
reg [10:0] gener_out;
begin
  for(i=10;i>=0;i=i-1)
  begin
     gener_out[i]=TX_OUT;
@(negedge clk);
  end
  if(gener_out==expec)
  $display("test case is passed");
  else
  $display("test case is falled");
end
endtask


task check_repeat_start;
input reg [7:0]data1,data2;
input reg [10:0]expec1,expec2;
reg [10:0]out_task;
integer n;
begin
data_operation(data1);
data_valid=1'b1; //to check condition only
P_Data=data2;
for(n=10;n>=0;n=n-1)
  begin
     out_task[n]=TX_OUT;
@(negedge clk);
  end
if(out_task==expec1)
  $display("test case is passed");
  else
  $display("test case is falled");
out_task=11'b000000000;
for(n=10;n>=0;n=n-1)
  begin
     out_task[n]=TX_OUT;
@(negedge clk);
  end
if(out_task==expec2)
  $display("test case is passed");
  else
  $display("test case is falled");
end
endtask
endmodule
