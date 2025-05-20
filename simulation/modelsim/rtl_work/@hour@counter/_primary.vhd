library verilog;
use verilog.vl_types.all;
entity HourCounter is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        hr_inc          : in     vl_logic;
        hr_low          : out    vl_logic_vector(3 downto 0);
        hr_high         : out    vl_logic_vector(1 downto 0)
    );
end HourCounter;
