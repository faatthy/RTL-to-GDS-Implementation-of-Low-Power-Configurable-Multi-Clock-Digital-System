module start_check(
    input Enable,
    input sampled_bit,
    input CLK,RST,
    output reg start_glitch
);
always @(posedge CLK) begin
    if (!RST) begin
        start_glitch<=1'b0;
    end
    else if (Enable) begin
        start_glitch<=(sampled_bit)?1'b1:1'b0;
    end
end
endmodule