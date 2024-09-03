
`timescale 1ns/1ps

module SYS_TOP_TB ();

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter DATA_WIDTH_TB  = 8  ;
parameter ADDR_WIDTH_TB  = 4  ;   
parameter REF_CLK_PER = 10 ;         // 100 MHz
parameter UART_CLK_PER = 271.267 ;   // 3.6864 MHz (115.2 * 32)
parameter WR_CMD  = 8'hAA ;   
parameter RD_CMD  = 8'hBB ;   
parameter ALU_WOP_CMD  = 8'hCC ;   
parameter ALU_WNOP_CMD = 8'hDD ;   

/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////
parameter RF_DEPTH=16;
reg                                RST_N;
reg                                UART_CLK;
reg                                REF_CLK;
reg                                UART_RX_IN;
reg  [3:0]                         SI;
reg                                scan_clk,scan_rst,SE,test_mode;
wire [3:0]                         SO;
wire                               UART_TX_O;
wire                               parity_error;
wire                               framing_error;


wire [DATA_WIDTH_TB-1:0] regfile_ary [RF_DEPTH-1:0];

assign regfile_ary[0]  = {DUT.Operand_A[7] , DUT.Operand_A[6] , DUT.Operand_A[5] , DUT.Operand_A[4] , DUT.Operand_A[3] , DUT.Operand_A[2] , DUT.Operand_A[1] , DUT.Operand_A[0]};
assign regfile_ary[1]  = {DUT.DIV_RATIO[7] , DUT.Operand_B[6] , DUT.Operand_B[5] , DUT.Operand_B[4] , DUT.Operand_B[3] , DUT.Operand_B[2] , DUT.Operand_B[1] , DUT.Operand_B[0]};
assign regfile_ary[2]  = {DUT.UART_Config[7] , DUT.UART_Config[6] , DUT.UART_Config[5] , DUT.UART_Config[4] , DUT.UART_Config[3] , DUT.UART_Config[2] , DUT.UART_Config[1] , DUT.UART_Config[0]};
assign regfile_ary[3]  = {DUT.DIV_RATIO[7] , DUT.DIV_RATIO[6] , DUT.DIV_RATIO[5] , DUT.DIV_RATIO[4] , DUT.DIV_RATIO[3] , DUT.DIV_RATIO[2] , DUT.DIV_RATIO[1] , DUT.DIV_RATIO[0]};
assign regfile_ary[4]  = {DUT.U0_RegFile.\regArr[4][7] , DUT.U0_RegFile.\regArr[4][6] , DUT.U0_RegFile.\regArr[4][5] , DUT.U0_RegFile.\regArr[4][4] , DUT.U0_RegFile.\regArr[4][3] , DUT.U0_RegFile.\regArr[4][2] , DUT.U0_RegFile.\regArr[4][1] , DUT.U0_RegFile.\regArr[4][0]};
assign regfile_ary[5]  = {DUT.U0_RegFile.\regArr[5][7] , DUT.U0_RegFile.\regArr[5][6] , DUT.U0_RegFile.\regArr[5][5] , DUT.U0_RegFile.\regArr[5][4] , DUT.U0_RegFile.\regArr[5][3] , DUT.U0_RegFile.\regArr[5][2] , DUT.U0_RegFile.\regArr[5][1] , DUT.U0_RegFile.\regArr[5][0]};
assign regfile_ary[6]  = {DUT.U0_RegFile.\regArr[6][7] , DUT.U0_RegFile.\regArr[6][6] , DUT.U0_RegFile.\regArr[6][5] , DUT.U0_RegFile.\regArr[6][4] , DUT.U0_RegFile.\regArr[6][3] , DUT.U0_RegFile.\regArr[6][2] , DUT.U0_RegFile.\regArr[6][1] , DUT.U0_RegFile.\regArr[6][0]};
assign regfile_ary[7]  = {DUT.U0_RegFile.\regArr[7][7] , DUT.U0_RegFile.\regArr[7][6] , DUT.U0_RegFile.\regArr[7][5] , DUT.U0_RegFile.\regArr[7][4] , DUT.U0_RegFile.\regArr[7][3] , DUT.U0_RegFile.\regArr[7][2] , DUT.U0_RegFile.\regArr[7][1] , DUT.U0_RegFile.\regArr[7][0]};
assign regfile_ary[8]  = {DUT.U0_RegFile.\regArr[8][7] , DUT.U0_RegFile.\regArr[8][6] , DUT.U0_RegFile.\regArr[8][5] , DUT.U0_RegFile.\regArr[8][4] , DUT.U0_RegFile.\regArr[8][3] , DUT.U0_RegFile.\regArr[8][2] , DUT.U0_RegFile.\regArr[8][1] , DUT.U0_RegFile.\regArr[8][0]};
assign regfile_ary[9]  = {DUT.U0_RegFile.\regArr[9][7] , DUT.U0_RegFile.\regArr[9][6] , DUT.U0_RegFile.\regArr[9][5] , DUT.U0_RegFile.\regArr[9][4] , DUT.U0_RegFile.\regArr[9][3] , DUT.U0_RegFile.\regArr[9][2] , DUT.U0_RegFile.\regArr[9][1] , DUT.U0_RegFile.\regArr[9][0]};
assign regfile_ary[10] = {DUT.U0_RegFile.\regArr[10][7] , DUT.U0_RegFile.\regArr[10][6] , DUT.U0_RegFile.\regArr[10][5] , DUT.U0_RegFile.\regArr[10][4] , DUT.U0_RegFile.\regArr[10][3] , DUT.U0_RegFile.\regArr[10][2] , DUT.U0_RegFile.\regArr[10][1] , DUT.U0_RegFile.\regArr[10][0]};
assign regfile_ary[11] = {DUT.U0_RegFile.\regArr[11][7] , DUT.U0_RegFile.\regArr[11][6] , DUT.U0_RegFile.\regArr[11][5] , DUT.U0_RegFile.\regArr[11][4] , DUT.U0_RegFile.\regArr[11][3] , DUT.U0_RegFile.\regArr[11][2] , DUT.U0_RegFile.\regArr[11][1] , DUT.U0_RegFile.\regArr[11][0]};
assign regfile_ary[12] = {DUT.U0_RegFile.\regArr[12][7] , DUT.U0_RegFile.\regArr[12][6] , DUT.U0_RegFile.\regArr[12][5] , DUT.U0_RegFile.\regArr[12][4] , DUT.U0_RegFile.\regArr[12][3] , DUT.U0_RegFile.\regArr[12][2] , DUT.U0_RegFile.\regArr[12][1] , DUT.U0_RegFile.\regArr[12][0]};
assign regfile_ary[13] = {DUT.U0_RegFile.\regArr[13][7] , DUT.U0_RegFile.\regArr[13][6] , DUT.U0_RegFile.\regArr[13][5] , DUT.U0_RegFile.\regArr[13][4] , DUT.U0_RegFile.\regArr[13][3] , DUT.U0_RegFile.\regArr[13][2] , DUT.U0_RegFile.\regArr[13][1] , DUT.U0_RegFile.\regArr[13][0]};
assign regfile_ary[14] = {DUT.U0_RegFile.\regArr[14][7] , DUT.U0_RegFile.\regArr[14][6] , DUT.U0_RegFile.\regArr[14][5] , DUT.U0_RegFile.\regArr[14][4] , DUT.U0_RegFile.\regArr[14][3] , DUT.U0_RegFile.\regArr[14][2] , DUT.U0_RegFile.\regArr[14][1] , DUT.U0_RegFile.\regArr[14][0]};
assign regfile_ary[15] = {DUT.U0_RegFile.\regArr[15][7] , DUT.U0_RegFile.\regArr[15][6] , DUT.U0_RegFile.\regArr[15][5] , DUT.U0_RegFile.\regArr[15][4] , DUT.U0_RegFile.\regArr[15][3] , DUT.U0_RegFile.\regArr[15][2] , DUT.U0_RegFile.\regArr[15][1] , DUT.U0_RegFile.\regArr[15][0]};
*/
////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////

initial
 begin
 // Initialization
 initialize() ;
scan_clk = 0; scan_rst = 0; SE = 0; test_mode = 0; SI = 'b0;
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
$stop ;
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


////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize ;
  begin
	UART_CLK          = 1'b0   ;
	REF_CLK           = 1'b0   ;
	RST_N             = 1'b1   ;    // rst is deactivated
	UART_RX_IN        = 1'b1   ;
	scan_clk = 0; scan_rst = 0; SE = 0; test_mode = 0; SI = 'b0;
 // Reset

  end
endtask

///////////////////////// RESET /////////////////////////
task reset ;
  begin
	#(REF_CLK_PER)
	RST_N  = 'b0;           // rst is activated
	#(REF_CLK_PER)
	RST_N  = 'b1;
	#(REF_CLK_PER) ;
  end
endtask

/////////////////////// Load Frame /////////////////////////
task LD_FRAME ;
 input  [DATA_WIDTH_TB-1:0]  FRAME_DATA ;
 
 integer   i  ;
 
 begin
	
	@ (posedge DUT.UART_Block.TX_CLK)  
	UART_RX_IN <= 1'b0 ;                    // start_bit

	for(i=0; i<8; i=i+1)
		begin
		@(posedge DUT.UART_Block.TX_CLK) 		
		UART_RX_IN <= FRAME_DATA[i] ;       // frame data bits
		end 

	if(regfile_ary[2][0])
		begin
			@ (posedge DUT.UART_Block.TX_CLK) 
			case(regfile_ary[2][1])
			1'b0 : UART_RX_IN <= ^FRAME_DATA  ;     // Even Parity
			1'b1 : UART_RX_IN <= ~^FRAME_DATA ;     // Odd Parity
			endcase	
		end
	
	@ (posedge DUT.UART_Block.TX_CLK) 
	UART_RX_IN <= 1'b1 ;              // stop_bit
	
 end
endtask 

/////////////////////// WRITE CMD /////////////////////////
task SEND_WR_CMD ;
 input  [DATA_WIDTH_TB-1:0]  ADDR ;
 input  [DATA_WIDTH_TB-1:0]  DATA ;
 
 begin
	LD_FRAME(WR_CMD) ;   // Load Write Command
	LD_FRAME(ADDR)   ;   // Load Write Address
	LD_FRAME(DATA)	 ;   // Load Write Data
 end
endtask 

/////////////////////// Read CMD /////////////////////////
task SEND_RD_CMD ;
 input  [DATA_WIDTH_TB-1:0]  ADDR ;
 
 begin
	LD_FRAME(RD_CMD) ;  // Load Read Command
	LD_FRAME(ADDR)   ;  // Load Read Address
 end
endtask 

///////////////////// ALU_WOP CMD ///////////////////////
task SEND_ALU_WOP_CMD ;
 input  [DATA_WIDTH_TB-1:0]  OP_A ;
 input  [DATA_WIDTH_TB-1:0]  OP_B ;
 input  [DATA_WIDTH_TB-1:0]  FUNC ;
 
 begin
	LD_FRAME(ALU_WOP_CMD) ;	   // Load ALU_WOP Command
	LD_FRAME(OP_A)        ;    // Load Operand A 
	LD_FRAME(OP_B)	      ;    // Load Operand B 
	LD_FRAME(FUNC)        ;    // Load ALU Function
 end
endtask 

///////////////////// ALU_WOP CMD ///////////////////////
task SEND_ALU_WNOP_CMD ;
 input  [DATA_WIDTH_TB-1:0]  FUNC ;
 
 begin
	LD_FRAME(ALU_WNOP_CMD)	 ;    // Load ALU_WOP Command
	LD_FRAME(FUNC)           ;    // Load ALU Function
 end
endtask 

//////////////// Check Write Operation /////////////////
task CHECK_WR ;
 input  [DATA_WIDTH_TB-1:0]  ADDR ;
 input  [DATA_WIDTH_TB-1:0]  DATA ;
 
 begin
	wait(DUT.U0_RegFile.WrEn)
	repeat(2) @(posedge REF_CLK); 
	if(regfile_ary[ADDR[ADDR_WIDTH_TB-1:0]] == DATA)
		begin
			$display("Write Operation is succeeded with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",regfile_ary[2][0],regfile_ary[2][1],regfile_ary[2][7:2]);
		end
	else
		begin
			$display("Write Operation is failed with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",regfile_ary[2][0],regfile_ary[2][1],regfile_ary[2][7:2]);
		end	
 end
endtask 

//////////////// Check Read Operation /////////////////
task CHECK_RD ;
 input  [DATA_WIDTH_TB-1:0]  	ADDR     ;
 
 reg    [10:0]  gener_out ,expec_out;     //longest frame = 11 bits (1-start,1-stop,8-data,1-parity)
 reg            parity_bit;
 
 integer   i  ;

 begin
   
	//generated frame
	@(posedge DUT.UART_Block.Busy)
	begin
	for(i=0; i<11; i=i+1)
		begin
		@(negedge DUT.UART_Block.TX_CLK) gener_out[i] = UART_TX_O ;
		end
	end
	//calculate expected parity bit 	
    if(regfile_ary[2][0])
		if(regfile_ary[2][1])
			parity_bit = ~^regfile_ary[ADDR[ADDR_WIDTH_TB-1:0]] ;
		else
			parity_bit = ^regfile_ary[ADDR[ADDR_WIDTH_TB-1:0]] ;
	else
			parity_bit = 1'b1 ;	
	
	//expected frame
    if(regfile_ary[2][0])
		expec_out = {1'b1,parity_bit,regfile_ary[ADDR[ADDR_WIDTH_TB-1:0]],1'b0} ;
	else
		expec_out = {1'b1,1'b1,regfile_ary[ADDR[ADDR_WIDTH_TB-1:0]],1'b0} ;
			
	if(gener_out == expec_out) 
		begin
			$display("Read Operation is succeeded with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",regfile_ary[2][0],regfile_ary[2][1],regfile_ary[2][7:2]);
		end
	else
		begin
			$display("Read Operation is failed with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",regfile_ary[2][0],regfile_ary[2][1],regfile_ary[2][7:2]);
		end
 end
endtask

//////////////// Check ALU Operation /////////////////
task CHECK_ALU ;
 input  [DATA_WIDTH_TB-1:0]  	FUNCTION ;

 //longest frame = 11 bits (1-start,1-stop,8-data,1-parity)
 
 reg    [10:0]  gener_byte0  , gener_byte1 ;     
 reg    [10:0]  expec_byte0  , expec_byte1  ;                        

 reg            parity_bit0 , parity_bit1 ;

 
 reg    [2*DATA_WIDTH_TB-1:0] ALU_OUT_RESULT ;

 
 integer   i  ;

 begin

		//generated byte0 frame
	@(posedge DUT.UART_Block.Busy)
	for(i=0; i<10+regfile_ary[2][0]; i=i+1)
		begin
		@(negedge DUT.UART_Block.TX_CLK) gener_byte0[i] = UART_TX_O ;
		end
		
	//generated byte1 frame
	@(posedge DUT.UART_Block.Busy)
	for(i=0; i<10+regfile_ary[2][0]; i=i+1)
		begin
		@(negedge DUT.UART_Block.TX_CLK) gener_byte1[i] = UART_TX_O ;
		end
	//calculate ALU Output  	
	case (FUNCTION) 
     4'b0000: begin
               ALU_OUT_RESULT = regfile_ary[0] + regfile_ary[1];
              end
     4'b0001: begin
               ALU_OUT_RESULT = regfile_ary[0] - regfile_ary[1];
              end
     4'b0010: begin
               ALU_OUT_RESULT = regfile_ary[0] * regfile_ary[1];
              end
     4'b0011: begin
               ALU_OUT_RESULT = regfile_ary[0] / regfile_ary[1];
              end
     4'b0100: begin
               ALU_OUT_RESULT = regfile_ary[0] & regfile_ary[1];
              end
     4'b0101: begin
               ALU_OUT_RESULT = regfile_ary[0] | regfile_ary[1];
              end
     4'b0110: begin
               ALU_OUT_RESULT = ~ (regfile_ary[0] & regfile_ary[1]);
              end
     4'b0111: begin
               ALU_OUT_RESULT = ~ (regfile_ary[0] | regfile_ary[1]);
              end     
     4'b1000: begin
               ALU_OUT_RESULT =  (regfile_ary[0] ^ regfile_ary[1]);
              end
     4'b1001: begin
               ALU_OUT_RESULT = ~ (regfile_ary[0] ^ regfile_ary[1]);
              end           
     4'b1010: begin
              if (regfile_ary[0] == regfile_ary[1])
                 ALU_OUT_RESULT = 'b1;
              else
                 ALU_OUT_RESULT = 'b0;
              end
     4'b1011: begin
               if (regfile_ary[0] > regfile_ary[1])
                 ALU_OUT_RESULT = 'b10;
               else
                 ALU_OUT_RESULT = 'b0;
              end 
     4'b1100: begin
               if (regfile_ary[0] < regfile_ary[1])
                 ALU_OUT_RESULT = 'b11;
               else
                 ALU_OUT_RESULT = 'b0;
              end     
     4'b1101: begin
               ALU_OUT_RESULT = regfile_ary[0]>>1;
              end
     4'b1110: begin 
               ALU_OUT_RESULT = regfile_ary[0]<<1;
              end
     4'b1111: begin
               ALU_OUT_RESULT = 'b0;
              end
     endcase

	
	//calculate expected parity bit for ALU byte0 data  	
    if(DUT.U0_RegFile.REG2[0])
		if(DUT.U0_RegFile.REG2[1])
			parity_bit0 = ~^ALU_OUT_RESULT[DATA_WIDTH_TB-1:0] ;
		else
			parity_bit0 = ^ALU_OUT_RESULT[DATA_WIDTH_TB-1:0] ;
	else
			parity_bit0 = 1'b1 ;	

	//calculate expected parity bit for ALU byte1 data  	
    if(DUT.U0_RegFile.REG2[0])
		if(DUT.U0_RegFile.REG2[1])
			parity_bit1 = ~^ALU_OUT_RESULT[2*DATA_WIDTH_TB-1:DATA_WIDTH_TB] ;
		else
			parity_bit1 = ^ALU_OUT_RESULT[2*DATA_WIDTH_TB-1:DATA_WIDTH_TB] ;
	else
			parity_bit1 = 1'b1 ;	


	//expected byte0 frame 
    if(DUT.U0_RegFile.REG2[0])
		expec_byte0 = {1'b1,parity_bit0,ALU_OUT_RESULT[DATA_WIDTH_TB-1:0],1'b0} ;
	else
		expec_byte0 = {1'b1,1'b1,ALU_OUT_RESULT[DATA_WIDTH_TB-1:0],1'b0} ;

	//expected byte1 frame 
    if(DUT.U0_RegFile.REG2[0])
		expec_byte1 = {1'b1,parity_bit1,ALU_OUT_RESULT[2*DATA_WIDTH_TB-1:DATA_WIDTH_TB],1'b0} ;
	else
		expec_byte1 = {1'b1,1'b1,ALU_OUT_RESULT[2*DATA_WIDTH_TB-1:DATA_WIDTH_TB],1'b0} ;

		
	if(gener_byte0 == expec_byte0 && gener_byte1 == expec_byte1) 
		begin
			$display("ALU Operation is succeeded with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",regfile_ary[2][0],regfile_ary[2][1],regfile_ary[2][7:2]);
		end
	else
		begin
			$display("ALU Operation is failed with configurations PARITY_ENABLE=%d PARITY_TYPE=%d  PRESCALE=%d  ",regfile_ary[2][0],regfile_ary[2][1],regfile_ary[2][7:2]);
		end

	end
endtask

//////////////////////////////////////////////////////// 
///////////////////// Clock Generator //////////////////
////////////////////////////////////////////////////////
 
// REF Clock Generator
always #(REF_CLK_PER/2) REF_CLK = ~REF_CLK ;

// UART RX Clock Generator
always #(UART_CLK_PER/2) UART_CLK = ~UART_CLK ;


//////////////////////////////////////////////////////// 
///////////////// Design Instaniation //////////////////
////////////////////////////////////////////////////////

SYS_TOP DUT (
.UART_CLK(UART_CLK),
.REF_CLK(REF_CLK),
.RST(RST_N),
.RX_IN(UART_RX_IN),
.TX_OUT(UART_TX_O),
.Parity_Error(parity_error),
.Stop_Error(framing_error),
.SE(SE),
.SI(SI),
.test_mode(test_mode),
.scan_rst(scan_rst),
.scan_clk(scan_clk),
.SO(SO)
);


endmodule

