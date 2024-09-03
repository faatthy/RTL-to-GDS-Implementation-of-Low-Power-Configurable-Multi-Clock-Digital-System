module uart_tx_fsm (
    input RST,CLK,
    input ser_done,Data_Valid,
    output reg busy,
    output reg [1:0] mux_sel,
    output reg Ser_enable,
    input parity_enable
);

localparam idle_state =3'b000;
localparam start_state=3'b001;
localparam data_state=3'b010;
localparam parity_state=3'b011;
localparam stop_state=3'b100;

reg [2:0] next_state;
reg [2:0] current_state;
reg busy_c;
always @(posedge CLK,negedge RST)
begin
  if(!RST)
  current_state<=idle_state;
  else
  current_state<=next_state;
end
always @(*)
begin
  case(current_state)
  idle_state:
  begin
    if(Data_Valid)
    next_state=start_state;
    else
    next_state=idle_state;
  end
  start_state:next_state=data_state;
  data_state:begin
    if(ser_done)
    begin
    if(parity_enable)
    next_state=parity_state;
    else
    begin
    next_state=stop_state;
    end
    end
    else
    next_state=data_state;
  end
  parity_state:next_state=stop_state;
  stop_state:begin
next_state=idle_state;
  end
  default:next_state=idle_state;
  endcase
end
always@(*)
begin
  case(current_state)
  idle_state:
  begin
  Ser_enable=1'b0;
  busy_c=1'b0;
  mux_sel=2'b11;   //to make output equal one 
  end
  start_state:
  begin
    Ser_enable=1'b0;
    busy_c=1'b1;
    mux_sel=2'b00;   // start bit output
  end
  data_state:
  begin
    busy_c=1'b1;
    mux_sel=2'b01;   // serial output 
    if(ser_done)
    Ser_enable=1'b0;
    else
    Ser_enable=1'b1;
  end
  parity_state:
  begin
    Ser_enable=1'b0;
    busy_c=1'b1;
    mux_sel=2'b10;   //parity bit output 
  end
  stop_state:
  begin
    Ser_enable=1'b0;
    busy_c=1'b1;     //////////**********////
    mux_sel=2'b11;   // stop bit output 
  end
  default:begin
    Ser_enable=1'b0;
    busy_c=1'b0;
    mux_sel=2'b00;
  end
  endcase
end

always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    busy <= 1'b0 ;
   end
  else
   begin
    busy <= busy_c ;
   end
 end
  
endmodule