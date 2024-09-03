library verilog;
use verilog.vl_types.all;
entity uart_tx_fsm is
    port(
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        ser_done        : in     vl_logic;
        Data_Valid      : in     vl_logic;
        busy            : out    vl_logic;
        mux_sel         : out    vl_logic_vector(1 downto 0);
        Ser_enable      : out    vl_logic;
        parity_enable   : in     vl_logic
    );
end uart_tx_fsm;
