module CLKDIV_tb();
 integer i;
localparam  T =10 ;
reg i_ref_clk;
reg i_rst_n;
reg i_clk_en;
reg [7:0] i_div_ratio;
wire o_div_clk;
//instantiation
CLKDIV  DUT(
    .i_ref_clk(i_ref_clk),
    .i_rst_n(i_rst_n),
    .i_clk_en(i_clk_en),
    .i_div_ratio(i_div_ratio),
    .o_div_clk(o_div_clk)
);

always #(T/2) i_ref_clk=~i_ref_clk;


initial begin
    initialize();
    reset();
    i_clk_en=1'b1;
    for (i ='b0 ;i<16 ;i=i+1 ) begin
        delay_task(i);
       // reset();
    end
    #10 $stop;
end






task initialize;
begin
  i_ref_clk=1'b1;
  i_rst_n=1'b1;
  i_ref_clk=1'b0;
  i_div_ratio='d2;
  i_clk_en=1'b1;
end
endtask

task reset;
begin
  i_rst_n=1'b1;
  @(negedge i_ref_clk);
  i_rst_n=1'b0;
  @(negedge i_ref_clk);
  i_rst_n=1'b1;
end
endtask


task delay_task;
input [7:0]delay_clk;
begin
  i_div_ratio=delay_clk;
  repeat(10*delay_clk)@(negedge i_ref_clk);
end
endtask

endmodule
