module fifo_mem
#(parameter D_SIZE =8 ,parameter F_DEPTH=8 ,parameter P_SIZE=4)
(
    input [D_SIZE-1:0]w_data,
    input [P_SIZE -2:0]w_addr,
    input w_full,w_inc,
    input w_clk,w_rstn,
    output wire [D_SIZE-1:0]r_data,
    input [P_SIZE-2:0]r_addr
);

reg [D_SIZE-1:0] memory [0:F_DEPTH-1];
reg [F_DEPTH-1:0] i ;
always @(posedge w_clk,negedge w_rstn) begin
    if (!w_rstn) begin
        for (i =0 ;i<F_DEPTH ;i=i+1) begin
            memory[i]<=0;
        end
    end
    else if(w_inc&&(!w_full))begin
        memory[w_addr]<=w_data;
    end
end

assign r_data=memory[r_addr];

endmodule
       