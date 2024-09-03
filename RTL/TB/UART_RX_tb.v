`timescale 1us/1ns
module UART_RX_tb();

reg RX_IN;
reg [5:0]prescale;
reg clk,rst,PAR_EN,parity_type;
wire[7:0] P_DATA;
wire data_valid;
wire parity_error;
wire stop_error;

UART_RX_TOP DUT(
.RX_IN(RX_IN),
.prescale(prescale),
.clk(clk),
.rst(rst),
.PAR_EN(PAR_EN),
.parity_type(parity_type),
.P_DATA(P_DATA),
.data_valid(data_valid),
.stop_error(stop_error),
.parity_error(parity_error)
);

reg T =8.68 ;

//generate clock  note 2.0 to be trigerred every 2.5   not 2
always #(T/2.0) clk=~clk;
initial 
begin
    initialize();
    $display("Even Parity Prescale 8 cases");
    take_data(11'b01010010101);
    check(8'b10100101,1'b0,1'b0);
    take_data(11'b01010010101);
    #(T) check(8'b10100101,1'b0,1'b0);
    take_data(11'b01100100011);
    #(T) check(8'b00010011,1'b0,1'b0);
    $display("odd Parity Prescale 8 cases");
    parity_type=1'b1;   //odd  parity
    take_data(11'b01010010111);
    check(8'b10100101,1'b0,1'b0);
    take_data(11'b01010010111);
    #(T) check(8'b10100101,1'b0,1'b0);
    take_data(11'b01100100001);
    #(T) check(8'b00010011,1'b0,1'b0);
    $display("test case error in parity bit so the valid bit still equal zero1");
    $display("the parity sshould to be zero but i send one to check parity error");
    take_data(11'b01010111011);
    check(8'b01110101,1'b1,1'b0);
    $display("test case check the start glitch");
    reset();
    @(negedge clk);
    RX_IN=1'b0;    //glitch
    @(negedge clk);
    RX_IN=1'b1;
 repeat(7) @(negedge clk);
if(DUT.Fsm.state_reg==3'b000)//come back to idle state
$display("test case start glitch is passed");
else
$display("test case start glitch is failed");   
$display("test case stop error");
take_data(11'b01010101010);
check(8'b01010101,1'b0,1'b1);
$display("test case sending two frames consequent");
$display("it check if the state go to start state");
reset();
take_data_consequent(11'b01100101011);
//@(negedge clk);
RX_IN=1'b0;
repeat(2)@(negedge clk);
if(DUT.Fsm.state_reg==3'b001)//start state
$display("test case consequent frame is passed");
else
$display("test case consequent frame is failed");   
prescale=6'd16;
parity_type=1'b0;
$display("Even Parity Prescale 16 cases");
    take_data(11'b01010010101);
    check(8'b10100101,1'b0,1'b0);
    take_data(11'b01010010101);
    #(T) check(8'b10100101,1'b0,1'b0);
    take_data(11'b01100100011);
    #(T) check(8'b00010011,1'b0,1'b0);
    $display("odd Parity Prescale 16 cases");
    parity_type=1'b1;   //odd  parity
    take_data(11'b01010010111);
    check(8'b10100101,1'b0,1'b0);
    take_data(11'b01010010111);
    #(T) check(8'b10100101,1'b0,1'b0);
    take_data(11'b01100100001);
    #(T) check(8'b00010011,1'b0,1'b0);
    $display("test case error in parity bit so the valid bit still equal zero1");
    $display("the parity sshould to be zero but i send one to check parity error");
    take_data(11'b01010111011);
    check(8'b01110101,1'b1,1'b0);
    $display("test case check the Consequent ftame");
    reset();
    @(negedge clk);
    RX_IN=1'b0;    //glitch
    @(negedge clk);
    RX_IN=1'b1;
 repeat(15) @(negedge clk);
if(DUT.Fsm.state_reg==3'b000)//come back to idle state
$display("test case consequent frame is passed");
else
$display("test case consequent frame is failed");   
$display("test case stop error");
take_data(11'b01010101010);
check(8'b01010101,1'b0,1'b1);

#10 $stop;
end
task initialize ;
begin
  clk=1'b0;
  rst=1'b1;
  PAR_EN=1'b1;
  parity_type=1'b0;     //even parity
  prescale=5'd8;
  RX_IN=1'b1;
end
endtask
task take_data;
input reg [10:0] data;
integer i;
begin
  reset();
  for(i=10;i>=0;i=i-1)
  begin
    @(posedge clk);
    RX_IN=data[i];
    #((prescale)*T);
  end
end
endtask


task check;
input [7:0] expected;
input expected_parity_error;
input expected_stop_error;
begin
  if (expected==P_DATA&&DUT.Parity_Check.parity_error==expected_parity_error&&DUT.Stop_Check.stop_error==expected_stop_error)begin
    $display("test case is passed");
  end
  else
  begin
    $display("test case is failed");
  end
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

task take_data_consequent;
input reg [10:0] data;
integer i;
begin
  reset();
  for(i=10;i>=0;i=i-1)
  begin
    @(negedge clk);
    if(i==0)
    begin
    RX_IN=data[i];
    #((prescale-'d2)*T);
    end
    else
    begin
    RX_IN=data[i];
    #((prescale)*T);
    end
end
end
endtask

endmodule