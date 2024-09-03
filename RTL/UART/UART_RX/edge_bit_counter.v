
module edge_bit_counter(
    input Enable,CLK,RST,
    input [5:0]Prescale,
    output reg[3:0] bit_count,
    output reg[5:0] edge_count
);

always @(posedge CLK,negedge RST) begin
  if (!RST) 
  begin
    bit_count<=4'b0;
    edge_count<=5'b0;
  end  
   else if(Enable)
   begin
  if (edge_count!=Prescale-1'b1)
   begin
    edge_count<=edge_count+1'b1;
  end  
  else
  begin
    edge_count<=5'b0;
    bit_count<=bit_count+1'b1;
  end
  end
  else
  begin
    edge_count<=5'b0;
    bit_count<=4'b0;
  end
end

endmodule 