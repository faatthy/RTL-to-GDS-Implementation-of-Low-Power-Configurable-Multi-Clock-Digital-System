module fifo_rd
#(parameter P_SIZE=4)
(
    input r_clk,r_rstn,
    input r_inc,
    output wire [P_SIZE-2:0]rd_addr,
    output reg [P_SIZE-1:0]gray_rd_ptr,
    input [P_SIZE-1:0]sync_wr_ptr,
    output reg empty

);     
    
reg[P_SIZE-1:0] binary_ptr;
wire[P_SIZE-1:0] binary_next_ptr;
wire[P_SIZE-1:0] grey_ptr;
wire rempty_comb;


assign rempty_comb=(sync_wr_ptr==grey_ptr)?1'b1:1'b0;
assign binary_next_ptr=(r_inc&&(!empty))?binary_ptr+'b1:binary_ptr;
assign grey_ptr=(binary_next_ptr>>1)^binary_next_ptr;
assign rd_addr =binary_ptr[P_SIZE-2:0];
always @(posedge r_clk,negedge r_rstn) begin
    if (!r_rstn) begin
        binary_ptr<=0;
        gray_rd_ptr<=0;
        empty<=0;
    end
    else begin
      empty<=rempty_comb;
      gray_rd_ptr<=grey_ptr;
      binary_ptr<=binary_next_ptr;
    end
end

endmodule

