module UART_TX_TOP
#(parameter parity_type=0)(
    input [7:0]P_Data,
    input clk,rst,data_valid,parity_en,
    output TX_OUT,busy
);
wire ser_en,ser_done;
wire [1:0] mux_sel;
wire ser_out;
wire parity_out;

PARITY  #(.parity_type(parity_type))PARITY_CALC(
    .rst(rst),
    .clk(clk),
    .parity_en(parity_en),
    .parity_data(P_Data),
    .parity_out(parity_out),
    .data_valid(data_valid),
    .busy(busy)
);

SERIALIZER serializer(
    .rst(rst),
    .clk(clk),
    .ser_en(ser_en),
    .ser_done(ser_done),
    .ser_out(ser_out),
    .data_valid(data_valid),
    .data(P_Data),
    .busy(busy)
);

UART_TX_FSM FSM (
    .rst(rst),
    .clk(clk),
    .ser_done(ser_done),
    .data_valid(data_valid),
    .busy(busy),
    .mux_sel(mux_sel),
    .ser_en(ser_en),
    .parity_en(parity_en)
);

MUX4x1 MUX(
    .start_bit(1'b0),
    .stop_bit(1'b1),
    .parity_bit(parity_out),
    .ser_data(ser_out),
    .TX_OUT(TX_OUT),
    .mux_sel(mux_sel)
);
endmodule
