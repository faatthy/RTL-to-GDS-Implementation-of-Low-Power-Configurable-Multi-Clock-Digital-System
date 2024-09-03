library verilog;
use verilog.vl_types.all;
entity uart_rx_fsm is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        S_DATA          : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        edge_count      : in     vl_logic_vector(5 downto 0);
        parity_edge_bit_en: in     vl_logic;
        bit_count       : in     vl_logic_vector(3 downto 0);
        parity_error    : in     vl_logic;
        start_glitch    : in     vl_logic;
        stop_error      : in     vl_logic;
        par_chk_en      : out    vl_logic;
        strt_chk_en     : out    vl_logic;
        stp_chk_en      : out    vl_logic;
        deser_en        : out    vl_logic;
        edge_bit_en     : out    vl_logic;
        dat_samp_en     : out    vl_logic;
        data_valid      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end uart_rx_fsm;
