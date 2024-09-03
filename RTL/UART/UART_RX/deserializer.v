module deserializer
#(parameter DATA_WIDTH=8)
(
    input sampled_bit,
    input CLK,RST,
    input Enable,
    input [5:0]edge_count,
    input [5:0]Prescale,
    output reg[DATA_WIDTH-1:0] P_DATA
);
always @(posedge CLK,negedge RST) begin
    if (!RST) begin
        P_DATA<=8'b0;
    end
    else if (Enable) begin
        P_DATA<={sampled_bit,P_DATA[7:1]};
    end
end
endmodule