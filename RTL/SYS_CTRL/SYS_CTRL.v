module SYS_CTRL #(parameter D_WIDTH = 8 , parameter FUNC_ALU =4 , parameter ADDRESS = 4) (

input	wire						CLK, 
input	wire						RST, 
input	wire						UART_RX_VLD, 
input	wire						ALU_OUT_VLD, 
input	wire	[D_WIDTH-1:0]		UART_RX_DATA, 

input	wire	[D_WIDTH-1:0]		RF_RdData, 

input	wire	  					RF_RdData_VLD, 
input	wire						FIFO_FULL, 	

input	wire	[(2*D_WIDTH)-1:0]	ALU_OUT,

output	reg							ALU_EN,
output	reg	[FUNC_ALU-1:0]			ALU_FUN,
output	reg							CLKG_EN,
output	reg	[ADDRESS-1:0]				RF_Address,
output	reg							RF_WrEn,
output	reg							RF_RdEn,
output	reg						CLKDIV_EN,
output	reg		[D_WIDTH-1:0]		UART_TX_DATA,  // input data to FIFO WR_DATA
output	reg							UART_TX_VLD, //WR_INCR
output	reg	[D_WIDTH-1:0]		RF_WrData //input data to the RegFile



);


//states
localparam          IDLE_state  = 4'b0000 ,
                    WRITE_ADDR_state = 4'b0001 ,                    
                    READ_ADDR_state = 4'b0010 ,
                    OPERANDA_state = 4'b0011 ,
                    WRITE_DATA_state = 4'b0100 ,
                    WRITE_DATA_REGFILE_state = 4'b0101 ,
                    READ_DATA_REGFILE_state = 4'b0110 ,
                    OPERANDB_state = 4'b0111 ,
                    ALU_FUN_state = 4'b1000 ,
                    ALU_CALC_state = 4'b1001 ,
                    ALU_WRITE_DATA_state = 4'b1010 ,
                    ALU_WRITE_DATA2_state = 4'b1011 ;
                    
                    
                    
localparam WRITE_CMD = 8'hAA;
localparam READ_CMD  = 8'hBB;
localparam ALU_OPER_W_OP_CMD = 8'hCC;
localparam ALU_OPER_W_NOP_CMD = 8'hDD ;


reg      [3:0]      state_reg ,
                    state_next ;




//state transition
always @ (posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    state_reg <= IDLE_state ;
   end
  else
   begin
    state_reg <= state_next ;
   end
 end

//next state logic
always @ (*)
 begin
   case (state_reg)
   IDLE_state   :  begin
              if(UART_RX_VLD)
                begin
                  if(UART_RX_DATA == WRITE_CMD)
                    begin
                      state_next = WRITE_ADDR_state  ;
                    end
               else if(UART_RX_DATA == READ_CMD)
                 begin
                   state_next = READ_ADDR_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_OP_CMD)
                 begin
                   state_next = OPERANDA_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_NOP_CMD)
                 begin
                   state_next = ALU_FUN_state  ;
                 end
		else begin
		  state_next=IDLE_state;
		end
                end
              else
                begin
                 state_next = IDLE_state  ;
                end  
             end
   WRITE_ADDR_state  :  begin
             if(UART_RX_VLD)
            begin
              state_next = WRITE_DATA_state  ;
                end 
              else
              begin
                state_next = WRITE_ADDR_state  ;
            end 
     
        end
   WRITE_DATA_state  :  begin
          if(UART_RX_VLD)
            begin
              state_next = WRITE_DATA_REGFILE_state  ;
                end 
              else
              begin
                state_next = WRITE_DATA_state  ;
               end 
        
             end
             
    WRITE_DATA_REGFILE_state  :  begin
            if(UART_RX_VLD)
                begin
                  if(UART_RX_DATA == WRITE_CMD)
                    begin
                      state_next = WRITE_ADDR_state  ;
                    end
               else if(UART_RX_DATA == READ_CMD)
                 begin
                   state_next = READ_ADDR_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_OP_CMD)
                 begin
                   state_next = OPERANDA_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_NOP_CMD)
                 begin
                   state_next = ALU_FUN_state  ;
                 end
		else begin
		state_next =IDLE_state;
		end
                end
              else
                begin
                 state_next = IDLE_state  ;
                end
             end

READ_ADDR_state  :  begin
             if(UART_RX_VLD)
            begin
              state_next = READ_DATA_REGFILE_state  ;
                end 
              else
              begin
                state_next = READ_ADDR_state  ;
            end
          end 
     
 READ_DATA_REGFILE_state  :  begin
   if (FIFO_FULL || !RF_RdData_VLD)
        begin
          state_next = READ_DATA_REGFILE_state  ;
        end
        else if (!FIFO_FULL && RF_RdData_VLD)
        begin
            if(UART_RX_VLD)
                begin
                  if(UART_RX_DATA == WRITE_CMD)
                    begin
                      state_next = WRITE_ADDR_state  ;
                    end
               else if(UART_RX_DATA == READ_CMD)
                 begin
                   state_next = READ_ADDR_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_OP_CMD)
                 begin
                   state_next = OPERANDA_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_NOP_CMD)
                 begin
                   state_next = ALU_FUN_state  ;
                 end
		else begin
		state_next =IDLE_state;
		end
                end
              else
                begin
                 state_next = IDLE_state  ;
                end
              end
              else
            begin
              state_next = IDLE_state  ;
          end   
             end
             
  OPERANDA_state  :  begin
          if(UART_RX_VLD)
            begin
              state_next = OPERANDB_state  ;
                end 
              else
              begin
                state_next = OPERANDA_state  ;
               end
             end 
  
  OPERANDB_state  :  begin
          if(UART_RX_VLD)
            begin
              state_next = ALU_FUN_state  ;
                end 
              else
              begin
                state_next = OPERANDB_state  ;
               end
             end    
               
  ALU_FUN_state  :  begin
          if(UART_RX_VLD)
            begin
              state_next = ALU_CALC_state  ;
                end 
              else
              begin
                state_next = ALU_FUN_state  ;
               end
             end
               
               
  ALU_CALC_state  :  begin
          if(ALU_OUT_VLD)
            begin
              state_next = ALU_WRITE_DATA_state  ;
                end 
              else
              begin
                state_next = ALU_CALC_state  ;
               end
             end 
               
  ALU_WRITE_DATA_state  :  begin
              state_next = ALU_WRITE_DATA2_state  ;
               end          
  
  ALU_WRITE_DATA2_state  :  begin
            if(UART_RX_VLD)
                begin
                  if(UART_RX_DATA == WRITE_CMD)
                    begin
                      state_next = WRITE_ADDR_state  ;
                    end
               else if(UART_RX_DATA == READ_CMD)
                 begin
                   state_next = READ_ADDR_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_OP_CMD)
                 begin
                   state_next = OPERANDA_state  ;
                 end
               else if (UART_RX_DATA == ALU_OPER_W_NOP_CMD)
                 begin
                   state_next = ALU_FUN_state  ;
                 end
		else begin
		state_next =IDLE_state;
		end
                end
              else
                begin
                 state_next = IDLE_state  ;
                end  
             end

  
  default : begin
                 state_next = IDLE_state  ;
             end           
   endcase   
 end

/*always @(RST or state_reg or stp_chk_en)
begin
  if(!RST || state_reg == IDLE_state || state_reg == Start_chk_state)
    begin
      error_flag_stop <= 0;
  end
  else if (stp_chk_en)
    begin
      error_flag_stop <= stp_err ;
      end
      
end*/
//output logic
reg [3:0] RF_Address_reg ;
reg [7:0] RF_WrData_reg ;
reg [3:0] ALU_FUN_reg ;
reg [15:0] ALU_OUT_reg ;

always @ (posedge CLK)
begin
  RF_Address_reg <= RF_Address ;
  RF_WrData_reg <= RF_WrData ;
  ALU_FUN_reg <= ALU_FUN ;
  ALU_OUT_reg <= ALU_OUT ;
end


always @ (*)
 begin
   case (state_reg)
   IDLE_state   :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0100 ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
  WRITE_ADDR_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = UART_RX_DATA ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
  READ_ADDR_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = UART_RX_DATA  ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
  OPERANDA_state  :  begin
              RF_WrEn = 1'b1 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0000 ;
              RF_WrData = UART_RX_DATA ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end

  WRITE_DATA_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = RF_Address_reg ;
              RF_WrData = UART_RX_DATA ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
  WRITE_DATA_REGFILE_state  :  begin
              RF_WrEn = 1'b1 ;
              RF_RdEn = 1'b0 ;
              RF_Address = RF_Address_reg ;
              RF_WrData = RF_WrData_reg ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
  READ_DATA_REGFILE_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b1 ;
              RF_Address = RF_Address_reg ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = RF_RdData ;
              if(RF_RdData_VLD)
              begin 
              UART_TX_VLD  = 1'b1 ;
            end
          else
            begin
              UART_TX_VLD  = 1'b0 ;
            end
             end          
             
   OPERANDB_state  :  begin
              RF_WrEn = 1'b1 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0001 ;
              RF_WrData = UART_RX_DATA ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end          
             
   ALU_FUN_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0100 ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = UART_RX_DATA ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b1 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
    ALU_CALC_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0100 ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = ALU_FUN_reg ; 
              ALU_EN = 1'b1 ;
              CLKG_EN = 1'b1 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end
             
   ALU_WRITE_DATA_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0100 ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b1 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = ALU_OUT_reg [7:0] ; 
              UART_TX_VLD  = 1'b1 ;
             end 
    ALU_WRITE_DATA2_state  :  begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0100 ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b1 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = ALU_OUT_reg [15:8] ; 
              UART_TX_VLD  = 1'b1 ;
             end  
                        
             
             
             
             
   default : begin
              RF_WrEn = 1'b0 ;
              RF_RdEn = 1'b0 ;
              RF_Address = 4'b0100 ;
              RF_WrData = 8'b00000000 ;
              ALU_FUN = 4'b0000 ; 
              ALU_EN = 1'b0 ;
              CLKG_EN = 1'b0 ; 
              CLKDIV_EN = 1'b1 ;
              UART_TX_DATA = 8'b00000000 ; 
              UART_TX_VLD  = 1'b0 ;
             end  
   endcase   
 end




endmodule

 
