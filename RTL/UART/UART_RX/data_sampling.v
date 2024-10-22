module data_sampling(
    input [5:0]edge_count,
    input Enable,CLK,RST,
    input [5:0]Prescale,
    input S_DATA,
    output reg sampled_bit
);
reg [2:0] samples;
always @(posedge CLK,negedge RST) begin
    if (!RST) begin
        sampled_bit<=1'b0;
        samples<=3'b0;
    end
    else if (Enable) begin
        if (edge_count==(Prescale>>1'b1)) begin
            samples[1]<=S_DATA;     // half bit
        end
        else if (edge_count== ((Prescale>>1'b1)-1'b1)) begin
            samples[0]<=S_DATA;    //half bit before
        end
        else if (edge_count== ((Prescale>>1'b1)+1'b1)) begin
            samples[2]<=S_DATA;   //half bit after here sampling is done 
	    sampled_bit<=((samples[0]&&samples[1])|(samples[0]&&samples[2])|(samples[1]&&samples[2]));
        end
    end
    else
    begin
      samples<=3'b0;
      sampled_bit<=1'b0;
    end
end
endmodule
