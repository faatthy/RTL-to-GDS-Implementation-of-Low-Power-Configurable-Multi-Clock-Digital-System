`timescale 1ns/1ps 
module SYS_TOP_TB ;

parameter D_WIDTH = 8;
parameter ADDRESS = 4;
/*
parameter RATIO = 8;
parameter STAGES = 2;
parameter FUNC_ALU = 4;
parameter DEPTH = 8;
*/
parameter WR_CMD = 'hAA;
parameter RD_CMD = 'hBB;
parameter ALU_WOP_CMD = 'hCC;
parameter ALU_WNOP_CMD ='hDD ;

parameter REF_CLK_period = 20 ;
parameter UART_CLK_period = 271.267 ;


reg		REF_CLK_TB;
reg		RST_TB;
reg		UART_CLK_TB;
reg 	RX_IN_TB;
wire	TX_OUT_TB;
wire	parity_error_tb;
wire	framing_error_tb;

//reg	[D_WIDTH-1:0]  FRAME_DATA ;

 
SYS_TOP #(.DATA_WIDTH(D_WIDTH),.RF_ADDR(ADDRESS)) DUT (

.REF_CLK(REF_CLK_TB),
.RST_N(RST_TB),
.UART_CLK(UART_CLK_TB),
.UART_RX_IN(RX_IN_TB),
.UART_TX_O(TX_OUT_TB),
.framing_error(framing_error_tb),
.parity_error(parity_error_tb)
);

always
begin
#(REF_CLK_period / 2.0) REF_CLK_TB = ~REF_CLK_TB; 
end

always
begin
#(UART_CLK_period / 2.0) UART_CLK_TB = ~UART_CLK_TB; 
end

integer i ;


initial
begin
 
// Initialization
 initialize() ;

 // Reset
 reset() ; 
 //////////////// Default Configuration //////////////////
 ////////////////   PRESCALE : 32       //////////////////
 ////////////////   Parity   : Enabled  //////////////////
 ////////////////   TYPE     : EVEN     //////////////////

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;

 ///////////////////////////////////////////////////////// 
 ////////////////   Configuration 2     //////////////////
 ////////////////   PRESCALE : 32       //////////////////
 ////////////////   Parity   : Enabled  //////////////////
 ////////////////   TYPE     : ODD      ////////////////// 
 /////////////////////////////////////////////////////////

 SEND_WR_CMD(8'h02,8'h83) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;  

 ///////////////////////////////////////////////////////// 
 ////////////////   Configuration 3     //////////////////
 ////////////////   PRESCALE : 32       //////////////////
 ////////////////   Parity   : DISABLED //////////////////
 /////////////////////////////////////////////////////////

 SEND_WR_CMD(8'h02,8'h80) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;  

 ////////////////   Configuration 4     //////////////////
 ////////////////   PRESCALE : 16       //////////////////
 ////////////////   Parity   : Enabled  //////////////////
 ////////////////   TYPE     : EVEN     //////////////////
 
 SEND_WR_CMD(8'h02,8'h41) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 
 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;

 ///////////////////////////////////////////////////////// 
 ////////////////   Configuration 5     //////////////////
 ////////////////   PRESCALE : 16       //////////////////
 ////////////////   Parity   : Enabled  //////////////////
 ////////////////   TYPE     : ODD      ////////////////// 
 /////////////////////////////////////////////////////////

 SEND_WR_CMD(8'h02,8'h43) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;  

 ///////////////////////////////////////////////////////// 
 ////////////////   Configuration 6     //////////////////
 ////////////////   PRESCALE : 16       //////////////////
 ////////////////   Parity   : DISABLED //////////////////
 /////////////////////////////////////////////////////////

 SEND_WR_CMD(8'h02,8'h40) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;  


 ////////////////   Configuration 7     //////////////////
 ////////////////   PRESCALE : 8       //////////////////
 ////////////////   Parity   : Enabled  //////////////////
 ////////////////   TYPE     : EVEN     //////////////////
 
 SEND_WR_CMD(8'h02,8'h21) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 
 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;

 ///////////////////////////////////////////////////////// 
 ////////////////   Configuration 8     //////////////////
 ////////////////   PRESCALE : 8       //////////////////
 ////////////////   Parity   : Enabled  //////////////////
 ////////////////   TYPE     : ODD      ////////////////// 
 /////////////////////////////////////////////////////////

  SEND_WR_CMD(8'h02,8'h23) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;  

 ///////////////////////////////////////////////////////// 
 ////////////////   Configuration 9     //////////////////
 ////////////////   PRESCALE : 8       //////////////////
 ////////////////   Parity   : DISABLED //////////////////
 /////////////////////////////////////////////////////////

  SEND_WR_CMD(8'h02,8'h20) ;

 /////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////
 ///////////////////////////////////////////////////////// 

 /////////////////////  WRITE CMD  ///////////////////////

  //Send Write Command (Address:8'h06 & Data: 8'hA5)
  SEND_WR_CMD(8'h06,8'hA5) ;
 
  //Check Write Operation
  CHECK_WR(8'h06,8'hA5) ;

 /////////////////////  READ CMD   ///////////////////////

  // Send Read Command (Address:8'h02)
  SEND_RD_CMD(8'h02) ;
 
  // Check Read Operation
  CHECK_RD(8'h02) ;

 ////////////////////  ALU_WOP CMD   ////////////////////

  // Send ALU WOP Command (OP_A = 100 & OP_B = 50 & FUNC = Subtraction)
  SEND_ALU_WOP_CMD(8'd100,8'd50,8'd1) ;
 
  // Check ALU Command
  CHECK_ALU(8'd1) ;

 //////////////////// ALU_WNOP CMD //////////////////////

  // Send ALU WNOP Command (FUNC = Addition)
  SEND_ALU_WNOP_CMD(8'd0) ;
 
  // Check ALU Command
  CHECK_ALU(8'd0) ;  



  
#4000

$stop ;

end


task initialize ;
  begin
	UART_CLK_TB         = 1'b0   ;
	REF_CLK_TB           = 1'b0   ;
	RST_TB             = 1'b1   ;    // rst is deactivated
	RX_IN_TB       = 1'b1   ;
  end
endtask

///////////////////////// RESET /////////////////////////
task reset ;
  begin
	#(REF_CLK_period)
	RST_TB  = 'b0;           // rst is activated
	#(REF_CLK_period)
	RST_TB  = 'b1;
	#(REF_CLK_period) ;
  end
endtask


task LD_FRAME ;
 input  [D_WIDTH-1:0]  FRAME_DATA ;
 
 integer   i  ;
 
 begin
	
	@ (posedge DUT.U0_UART.TX_CLK)  
	RX_IN_TB <= 1'b0 ;                    // start_bit

	for(i=0; i<8; i=i+1)
		begin
		@(posedge DUT.U0_UART.TX_CLK) 		
		RX_IN_TB <= FRAME_DATA[i] ;       // frame data bits
		end 

	
	if(DUT.U0_RegFile.REG2[0])
		begin
			@ (posedge DUT.U0_UART.TX_CLK) 
			begin
			case(DUT.U0_RegFile.REG2[1])
			1'b0 : RX_IN_TB <= ^FRAME_DATA  ;     // Even Parity
			1'b1 : RX_IN_TB <= ~^FRAME_DATA ;     // Odd Parity
			endcase	
			end
		end
	
	
	@ (posedge DUT.U0_UART.TX_CLK) 
	begin
	RX_IN_TB <= 1'b1 ;              // stop_bit
		end
		
 end
endtask 

task SEND_WR_CMD ;
 input  [D_WIDTH-1:0]  ADDR ;
 input  [D_WIDTH-1:0]  DATA ;
 
 begin
	LD_FRAME(WR_CMD) ;   // Load Write Command
	LD_FRAME(ADDR)   ;   // Load Write Address
	LD_FRAME(DATA)	 ;   // Load Write Data
 end
endtask


task CHECK_WR ;
 input  [D_WIDTH-1:0]  ADDR ;
 input  [D_WIDTH-1:0]  DATA ;
 
 begin
	wait(DUT.U0_RegFile.WrEn)
	repeat(2)@(posedge REF_CLK_TB);

	if(DUT.U0_RegFile.regArr[ADDR[ADDRESS-1:0]] == DATA)
		begin
			$display("Write Operation is succeeded with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",DUT.U0_RegFile.REG2[0],DUT.U0_RegFile.REG2[1],DUT.U0_RegFile.REG2[7:2]);
		end
	else
		begin
			$display("Write Operation is failed with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",DUT.U0_RegFile.REG2[0],DUT.U0_RegFile.REG2[1],DUT.U0_RegFile.REG2[7:2]);
		end	
 
 end
endtask 

task SEND_RD_CMD ;
input  [D_WIDTH-1:0]  ADDR ;
 
 begin
	LD_FRAME(RD_CMD) ;  // Load Read Command
	LD_FRAME(ADDR)   ;  // Load Read Address
 end
endtask 


task CHECK_RD ;
 input  [D_WIDTH-1:0]  	ADDR     ;
 
 reg    [10:0]  gener_out ,expec_out;     //longest frame = 11 bits (1-start,1-stop,8-data,1-parity)
 reg            parity_bit;
 
 integer   i  ;

 begin

	//generated frame
	@(posedge DUT.U0_UART.TX_OUT_V)
	for(i=0; i<11; i=i+1)
		begin
		@(negedge DUT.U0_UART.TX_CLK) gener_out[i] = TX_OUT_TB ;
		end
	
	//calculate expected parity bit 	
    if(DUT.U0_RegFile.REG2[0])
		if(DUT.U0_RegFile.REG2[1])
			parity_bit = ~^DUT.U0_RegFile.regArr[ADDR[ADDRESS-1:0]] ;
		else
			parity_bit = ^DUT.U0_RegFile.regArr[ADDR[ADDRESS-1:0]] ;
	else
			parity_bit = 1'b1 ;	
	
	//expected frame
    if(DUT.U0_RegFile.REG2[0])
		expec_out = {1'b1,parity_bit,DUT.U0_RegFile.regArr[ADDR[ADDRESS-1:0]],1'b0} ;
	else
		expec_out = {1'b1,1'b1,DUT.U0_RegFile.regArr[ADDR[ADDRESS-1:0]],1'b0} ;
			
	if(gener_out == expec_out) 
		begin
			$display("Read Operation is succeeded with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",DUT.U0_RegFile.REG2[0],DUT.U0_RegFile.REG2[1],DUT.U0_RegFile.REG2[7:2]);
		end
	else
		begin
			$display("Read Operation is failed with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",DUT.U0_RegFile.REG2[0],DUT.U0_RegFile.REG2[1],DUT.U0_RegFile.REG2[7:2]);
		end
 end
endtask

///////////////////// ALU_WOP CMD ///////////////////////
task SEND_ALU_WOP_CMD ;
 input  [D_WIDTH-1:0]  OP_A ;
 input  [D_WIDTH-1:0]  OP_B ;
 input  [D_WIDTH-1:0]  FUNC ;
 
 begin
	LD_FRAME(ALU_WOP_CMD) ;	   // Load ALU_WOP Command
	LD_FRAME(OP_A)        ;    // Load Operand A 
	LD_FRAME(OP_B)	      ;    // Load Operand B 
	LD_FRAME(FUNC)        ;    // Load ALU Function
 end
endtask 

//////////////// Check ALU Operation /////////////////
task CHECK_ALU ;
 input  [D_WIDTH-1:0]  	FUNCTION ;

 //longest frame = 11 bits (1-start,1-stop,8-data,1-parity)
 
 reg    [10:0]  gener_byte0  , gener_byte1 ;     
 reg    [10:0]  expec_byte0  , expec_byte1  ;                        

 reg            parity_bit0 , parity_bit1 ;

 
 reg    [2*D_WIDTH-1:0] ALU_OUT_RESULT ;

 
 integer   i  ;

 begin

	//generated byte0 frame
	@(posedge DUT.U0_UART.TX_OUT_V)
	for(i=0; i<11; i=i+1)
		begin
		@(negedge DUT.U0_UART.TX_CLK) gener_byte0[i] = TX_OUT_TB ;
		end
		
	//generated byte1 frame
	@(posedge DUT.U0_UART.TX_OUT_V)
	for(i=0; i<11; i=i+1)
		begin
		@(negedge DUT.U0_UART.TX_CLK) gener_byte1[i] = TX_OUT_TB ;
		end
		
	//calculate ALU Output  	
	case (FUNCTION) 
     4'b0000: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0] + DUT.U0_RegFile.regArr[1];
              end
     4'b0001: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0] - DUT.U0_RegFile.regArr[1];
              end
     4'b0010: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0] * DUT.U0_RegFile.regArr[1];
              end
     4'b0011: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0] / DUT.U0_RegFile.regArr[1];
              end
     4'b0100: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0] & DUT.U0_RegFile.regArr[1];
              end
     4'b0101: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0] | DUT.U0_RegFile.regArr[1];
              end
     4'b0110: begin
               ALU_OUT_RESULT = ~ (DUT.U0_RegFile.regArr[0] & DUT.U0_RegFile.regArr[1]);
              end
     4'b0111: begin
               ALU_OUT_RESULT = ~ (DUT.U0_RegFile.regArr[0] | DUT.U0_RegFile.regArr[1]);
              end     
     4'b1000: begin
               ALU_OUT_RESULT =  (DUT.U0_RegFile.regArr[0] ^ DUT.U0_RegFile.regArr[1]);
              end
     4'b1001: begin
               ALU_OUT_RESULT = ~ (DUT.U0_RegFile.regArr[0] ^ DUT.U0_RegFile.regArr[1]);
              end           
     4'b1010: begin
              if (DUT.U0_RegFile.regArr[0] == DUT.U0_RegFile.regArr[1])
                 ALU_OUT_RESULT = 'b1;
              else
                 ALU_OUT_RESULT = 'b0;
              end
     4'b1011: begin
               if (DUT.U0_RegFile.regArr[0] > DUT.U0_RegFile.regArr[1])
                 ALU_OUT_RESULT = 'b10;
               else
                 ALU_OUT_RESULT = 'b0;
              end 
     4'b1100: begin
               if (DUT.U0_RegFile.regArr[0] < DUT.U0_RegFile.regArr[1])
                 ALU_OUT_RESULT = 'b11;
               else
                 ALU_OUT_RESULT = 'b0;
              end     
     4'b1101: begin
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0]>>1;
              end
     4'b1110: begin 
               ALU_OUT_RESULT = DUT.U0_RegFile.regArr[0]<<1;
              end
     4'b1111: begin
               ALU_OUT_RESULT = 'b0;
              end
     endcase

	
	//calculate expected parity bit for ALU byte0 data  	
    if(DUT.U0_RegFile.REG2[0])
		if(DUT.U0_RegFile.REG2[1])
			parity_bit0 = ~^ALU_OUT_RESULT[D_WIDTH-1:0] ;
		else
			parity_bit0 = ^ALU_OUT_RESULT[D_WIDTH-1:0] ;
	else
			parity_bit0 = 1'b1 ;	

	//calculate expected parity bit for ALU byte1 data  	
    if(DUT.U0_RegFile.REG2[0])
		if(DUT.U0_RegFile.REG2[1])
			parity_bit1 = ~^ALU_OUT_RESULT[2*D_WIDTH-1:D_WIDTH] ;
		else
			parity_bit1 = ^ALU_OUT_RESULT[2*D_WIDTH-1:D_WIDTH] ;
	else
			parity_bit1 = 1'b1 ;	


	//expected byte0 frame 
    if(DUT.U0_RegFile.REG2[0])
		expec_byte0 = {1'b1,parity_bit0,ALU_OUT_RESULT[D_WIDTH-1:0],1'b0} ;
	else
		expec_byte0 = {1'b1,1'b1,ALU_OUT_RESULT[D_WIDTH-1:0],1'b0} ;

	//expected byte1 frame 
    if(DUT.U0_RegFile.REG2[0])
		expec_byte1 = {1'b1,parity_bit1,ALU_OUT_RESULT[2*D_WIDTH-1:D_WIDTH],1'b0} ;
	else
		expec_byte1 = {1'b1,1'b1,ALU_OUT_RESULT[2*D_WIDTH-1:D_WIDTH],1'b0} ;

		
	if(gener_byte0 == expec_byte0 && gener_byte1 == expec_byte1) 
		begin
			$display("ALU Operation is succeeded with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",DUT.U0_RegFile.REG2[0],DUT.U0_RegFile.REG2[1],DUT.U0_RegFile.REG2[7:2]);
		end
	else
		begin
			$display("ALU Operation is failed with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d , gener_byte0 = %0h , expec_byte0 =%0h , gener_byte1 = %0h , expec_byte1 =%0h",DUT.U0_RegFile.REG2[0],DUT.U0_RegFile.REG2[1],DUT.U0_RegFile.REG2[7:2],gener_byte0 ,expec_byte0 , gener_byte1 , expec_byte1);
		end

	end
endtask

task SEND_ALU_WNOP_CMD ;
 input  [D_WIDTH-1:0]  FUNC ;
 
 begin
	LD_FRAME(ALU_WNOP_CMD)	 ;    // Load ALU_WOP Command
	LD_FRAME(FUNC)           ;    // Load ALU Function
 end
endtask 

endmodule
