	module parity_check
	#(parameter DATA_WIDTH=8)
	(
    input Enable,
    input sampled_bit,
    input CLK,RST,
    input parity_type,
    input [DATA_WIDTH-1:0] P_DATA,
    output reg par_err
);
reg parity_bit;
always @(posedge CLK,negedge RST) begin
    if (!RST) begin
        par_err=1'b0;
        parity_bit=1'b0;
    end
    else if (Enable) begin
        if (!parity_type) begin
            parity_bit=^P_DATA;
        end
        else
         begin
            parity_bit=~^P_DATA;
        end
        par_err=(parity_bit==sampled_bit)?1'b0:1'b1;
    end
end
endmodule