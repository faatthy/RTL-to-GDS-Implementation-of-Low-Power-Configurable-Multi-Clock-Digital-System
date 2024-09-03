library verilog;
use verilog.vl_types.all;
entity edge_bit_counter is
    port(
        Enable          : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        bit_count       : out    vl_logic_vector(3 downto 0);
        edge_count      : out    vl_logic_vector(5 downto 0)
    );
end edge_bit_counter;
