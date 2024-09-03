module DATA_SYNC #(
	parameter	BUS_WIDTH	=	8, 	
	parameter	NUM_STAGES 	= 	2	
	)

	(
	input	wire CLK,
	input	wire RST,
	input	wire bus_enable,
	input	wire [BUS_WIDTH-1:0] unsync_bus,
	output	reg  [BUS_WIDTH-1:0] sync_bus,
	output	reg enable_pulse_d
	);



// Synchronization FlipFlops
reg [NUM_STAGES-1:0]Sync_FFs;

//Pulse generator FlipFlop
reg Pulse_Gen_FF;		

//MUX Selector
reg Sel;


// Sequential always for Synchronization and pulse generator
always @(posedge CLK or negedge RST) begin
	if (!RST) begin
		Sync_FFs		<=		'b0;
		Pulse_Gen_FF	<=		'b0;
		enable_pulse_d	<=		'b0;
		sync_bus 		<=		'b0;
	end
	else  begin
		Sync_FFs		<=		{Sync_FFs[NUM_STAGES-2:0], bus_enable};	

		//Pulse Generator
		Pulse_Gen_FF	<=		Sync_FFs[NUM_STAGES-1];

		if(Sel)	begin
			sync_bus 	<=		unsync_bus;
		end

		//enable pulse
		enable_pulse_d	<=		Sel;
	end
end

// Combinational Always for MUX Selector
always @(*)
begin
	Sel 	=	(~Pulse_Gen_FF) & Sync_FFs[NUM_STAGES-1]	;
end 






endmodule

