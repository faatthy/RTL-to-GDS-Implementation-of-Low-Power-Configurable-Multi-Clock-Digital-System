library verilog;
use verilog.vl_types.all;
entity deserializer is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        sampled_bit     : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Enable          : in     vl_logic;
        edge_count      : in     vl_logic_vector(5 downto 0);
        Prescale        : in     vl_logic_vector(5 downto 0);
        P_DATA          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end deserializer;
