library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        IN_0            : in     vl_logic;
        IN_1            : in     vl_logic;
        IN_2            : in     vl_logic;
        IN_3            : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        \OUT\           : out    vl_logic
    );
end mux;
