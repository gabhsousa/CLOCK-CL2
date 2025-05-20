library verilog;
use verilog.vl_types.all;
entity SecondCounter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        sec_low         : out    vl_logic_vector(3 downto 0);
        sec_high        : out    vl_logic_vector(2 downto 0);
        min_inc         : out    vl_logic
    );
end SecondCounter;
