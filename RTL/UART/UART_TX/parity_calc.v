module parity_calc 
#(parameter WIDTH=8)(
    input parity_enable,Data_Valid,RST,CLK,Busy,
    output reg parity,
    input [WIDTH-1:0] DATA,
	input parity_type
);
always @(posedge CLK,negedge RST)
begin
  if(!RST)
  parity<=1'b0;
  else if(parity_enable&&Data_Valid&&!Busy)
  begin
    if(!parity_type)
    parity<=^DATA;
    else if(parity_type==1'b1)
    parity<=~^DATA;
  end
    /*else begin
         parity<=1'b0;
         end*/
end
endmodule 