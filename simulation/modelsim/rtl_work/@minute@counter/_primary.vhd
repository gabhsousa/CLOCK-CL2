library verilog;
use verilog.vl_types.all;
entity MinuteCounter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        min_inc         : in     vl_logic;
        min_low         : out    vl_logic_vector(3 downto 0);
        min_high        : out    vl_logic_vector(2 downto 0);
        hr_inc          : out    vl_logic
    );
end MinuteCounter;
