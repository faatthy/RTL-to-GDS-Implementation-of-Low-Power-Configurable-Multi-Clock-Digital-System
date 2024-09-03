library verilog;
use verilog.vl_types.all;
entity data_sampling is
    port(
        edge_count      : in     vl_logic_vector(5 downto 0);
        Enable          : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        S_DATA          : in     vl_logic;
        sampled_bit     : out    vl_logic
    );
end data_sampling;
