module uart_rx_fsm

#(parameter DATA_WIDTH=8)

(

    input CLK,RST,

    input S_DATA,

    input [5:0]Prescale,edge_count,

    input parity_edge_bit_en,

    input [3:0]bit_count,

    input parity_error,start_glitch,stop_error,

    output  par_chk_en,strt_chk_en,stp_chk_en,

    output  deser_en,edge_bit_en,dat_samp_en,

    output reg data_valid

);   

reg data_valid_comp;

localparam idle_state =3'b000 ;

localparam start_state =3'b001 ;

localparam data_sampling_state =3'b010;

localparam parity_check_state = 3'b011;

localparam stop_check_state = 3'b100;



localparam consequent_frame_state =3'b101 ;



reg [2:0] state_reg;

reg [2:0] state_next;



always @(posedge CLK) begin

    if (!RST) begin

        state_reg<=idle_state;

        data_valid<=1'b0;

    end

    else

    begin

      state_reg<=state_next;

      data_valid<=data_valid_comp;

    end

end

always @(*) begin
    case (state_reg)

      idle_state  : begin

        if (S_DATA) begin

            state_next=idle_state;

        end

        else

        begin

          state_next=start_state;

        end

      end

      start_state:begin

        if (edge_count==((Prescale>>1'b1)+2'd3)&&start_glitch) begin

            state_next=idle_state;

        end

        else if(edge_count==Prescale-1'b1) begin

            state_next=data_sampling_state;

        end

        else

        begin

          state_next=start_state;

        end

      end

      data_sampling_state:begin

        if (bit_count==4'd8&&edge_count==Prescale-1'b1) begin

          if (parity_edge_bit_en) begin

            state_next=parity_check_state;

          end

          else

          begin

            state_next=stop_check_state;

          end

        end
		else begin
		state_next=data_sampling_state;
    end
      end

      parity_check_state:begin

        if (edge_count==Prescale-1'b1) begin

            state_next=stop_check_state;

        end

        else

        begin

          state_next=parity_check_state;

        end

        end

      stop_check_state:begin

        if (edge_count==Prescale-'d2) begin   

            state_next=consequent_frame_state;

        end

        else

        begin

          state_next=stop_check_state;

        end

      end

      consequent_frame_state:begin

        if(!S_DATA)begin

          state_next=start_state;

        end

        else

        begin

          state_next=idle_state;

        end

      end

        default: state_next=idle_state;

    endcase

end

always @(*) begin

  if (state_reg==consequent_frame_state) begin

    if (parity_edge_bit_en) begin

      if (!parity_error&&!stop_error) begin

        data_valid_comp=1'b1;

      end

      else

      begin

        data_valid_comp=1'b0;

      end

    end

    else

    begin

      if (!stop_error) begin

        data_valid_comp=1'b1;

      end

      else

      begin

        data_valid_comp=1'b0;  

      end

    end

  end

  else

  begin

    data_valid_comp=1'b0;

  end

end

assign deser_en=((state_reg==data_sampling_state)&&(edge_count==(Prescale>>'d1)+'d2))?1'b1:1'b0;

assign strt_chk_en=((state_reg==start_state)&&(edge_count==(Prescale>>'d1)+'d2))?1'b1:1'b0;

assign stp_chk_en=((state_reg==stop_check_state)&&(edge_count==(Prescale>>'d1)+'d2))?1'b1:1'b0;

assign par_chk_en=((state_reg==parity_check_state)&&(edge_count==(Prescale>>'d1)+'d2))?1'b1:1'b0;

assign edge_bit_en= ((state_next == idle_state)) ? 'd0: 'd1;

assign dat_samp_en=(state_reg==idle_state)?1'b0:1'b1;



endmodule  



