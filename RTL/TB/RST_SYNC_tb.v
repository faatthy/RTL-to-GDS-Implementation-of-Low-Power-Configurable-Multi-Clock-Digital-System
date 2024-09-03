module RST_SYNC_tb ();
 
parameter NUM_STAGES_TB = 2 ; 

reg                 CLK ;
reg                 RST ;
wire                SYNC_RST ;



////////// Initial Block ////////
initial
begin

CLK = 1'b0 ;
RST = 1'b1 ;

#7 
RST = 1'b0 ;    

#6 
RST = 1'b1 ; 



#100 ;
$stop ;
    
end  

////////// Clock Generation /////////

always #5 CLK = ! CLK ;

///////////// Instantiation ///////////
					 
RST_SYNC  # ( .NUM_STAGES(NUM_STAGES_TB) )  DUT
(
.CLK(CLK),
.RST(RST),
.SYNC_RST(SYNC_RST)
);

endmodule

