library verilog;
use verilog.vl_types.all;
entity DATA_SYNC is
    generic(
        BUS_WIDTH       : integer := 8;
        NUM_STAGES      : integer := 2
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        bus_enable      : in     vl_logic;
        unsync_bus      : in     vl_logic_vector;
        sync_bus        : out    vl_logic_vector;
        enable_pulse_d  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BUS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end DATA_SYNC;
