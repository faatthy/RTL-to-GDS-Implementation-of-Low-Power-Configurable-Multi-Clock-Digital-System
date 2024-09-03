module BIT_SYNC
#(parameter NUM_STAGES =2,parameter BUS_WIDTH =4)
(
input [BUS_WIDTH-1:0]ASYNC,
input CLK,RST,
output reg [BUS_WIDTH-1:0] SYNC
);
integer i;
reg [NUM_STAGES-1:0] flip_flops [BUS_WIDTH-1:0];

always @(posedge CLK,negedge RST) begin
    if (!RST) begin
        for (i =0 ;i<BUS_WIDTH ;i=i+1 ) begin
            flip_flops[i]<='b0;
            SYNC<='b0;
        end

    end
    else begin
      for (i =0 ;i<BUS_WIDTH ;i=i+1 ) begin
        flip_flops[i]<={flip_flops[i][NUM_STAGES-2:0],ASYNC[i]} ;    //like shifter (deserializer)
        SYNC[i]<=flip_flops[i][NUM_STAGES-1];                      //store 
      end
    end
end

endmodule
        
