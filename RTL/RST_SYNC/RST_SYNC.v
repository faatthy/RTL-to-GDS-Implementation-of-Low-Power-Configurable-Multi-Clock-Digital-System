module RST_SYNC
#(parameter NUM_STAGES=2)
(
input RST,CLK,
output  SYNC_RST
);

reg [NUM_STAGES-1:0] reg_sync;
always @(posedge CLK ,negedge RST) begin
    if (!RST) begin
        reg_sync<=0;
    end
    else begin
      reg_sync<={reg_sync[NUM_STAGES-2:0],1'b1};
    end
    
end
 assign  SYNC_RST=reg_sync[NUM_STAGES-1];
endmodule
   