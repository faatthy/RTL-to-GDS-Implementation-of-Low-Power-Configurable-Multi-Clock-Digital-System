module stop_check(
    input Enable,
    input sampled_bit,
    input CLK,RST,
    output reg stop_error
);
always @(posedge CLK,negedge RST) begin
    if (!RST) begin
        stop_error<=1'b0;
    end
    else if (Enable) begin
        stop_error<=(sampled_bit)?1'b0:1'b1;
    end
end
endmodule