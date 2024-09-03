module fifo_wr
#(parameter P_SIZE=4)
(
    input wire w_clk,
    input wire w_rstn,
    input wire w_inc,
    input wire [P_SIZE-1:0] sync_rd_ptr,
    output wire [P_SIZE-2:0] w_addr,
    output reg [P_SIZE-1:0] gray_w_ptr,
    output wire full
);

reg [P_SIZE-1:0] w_ptr;
reg [P_SIZE-1:0] gray_w_ptr_next;
wire [P_SIZE-2:0] binary_next_ptr;
wire [P_SIZE-1:0] binary_next_ptr_raw;
integer i;

// Increment binary pointer
always @(posedge w_clk or negedge w_rstn) begin
    if (!w_rstn)
        w_ptr <= 0;
    else if (!full && w_inc)
        w_ptr <= w_ptr + 1;
end

// Generate write address
assign w_addr = w_ptr[P_SIZE-2:0];

// Convert binary write pointer to Gray code using a case statement
always @(*) begin
    gray_w_ptr_next=(w_ptr>>1)^w_ptr;
end

// Update Gray code pointer
always @(posedge w_clk or negedge w_rstn) begin
    if (!w_rstn)
        gray_w_ptr <= 0;
    else
        gray_w_ptr <= gray_w_ptr_next;
end

// Generate full flag
assign full = (sync_rd_ptr[P_SIZE-1] != gray_w_ptr[P_SIZE-1] &&
              sync_rd_ptr[P_SIZE-2] != gray_w_ptr[P_SIZE-2] &&
              sync_rd_ptr[P_SIZE-3:0] == gray_w_ptr[P_SIZE-3:0]);

endmodule

