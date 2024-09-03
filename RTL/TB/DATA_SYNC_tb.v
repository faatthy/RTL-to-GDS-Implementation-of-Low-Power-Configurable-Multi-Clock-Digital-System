module DATA_SYNC_tb;

    parameter NUM_STAGES = 2;
    parameter BUS_WIDTH = 8;

    reg [BUS_WIDTH-1:0] unsync_bus;
    reg bus_enable;
    reg CLK;
    reg RST;
    wire [BUS_WIDTH-1:0] sync_bus;
    wire enable_pulse;

    DATA_SYNC #(
        .STAGES(NUM_STAGES),
        .D_WIDTH(BUS_WIDTH)
    ) DUT (
        .unsync_bus(unsync_bus),
        .bus_enable(bus_enable),
        .CLK(CLK),
        .RST(RST),
        .sync_bus(sync_bus),
        .enable_pulse(enable_pulse)
    );

    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; // 100 MHz clock
    end

    initial begin
        // Initialize inputs
        RST = 0;
        unsync_bus = 0;
        bus_enable = 0;

        // Reset the system
        #10;
        RST = 1;
        
        // Test case 1: Synchronize a bus signal
        #10;
        unsync_bus = 8'hA5;
        bus_enable = 1;
        
        // Wait for a few clock cycles
        #40;
bus_enable=0;
#20;
	#10;
        unsync_bus = 8'hC5;
        bus_enable = 1;
        
        // Wait for a few clock cycles
        #40;
        unsync_bus = 8'h3C;
        
        // Test case 2: Disable the bus enable signal
        #10;
        bus_enable = 0;
        
        // Wait and end simulation
        #100;
        $stop;
    end
endmodule

