library verilog;
use verilog.vl_types.all;
entity Clock is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        sec_low_bcd     : out    vl_logic_vector(3 downto 0);
        sec_high_bcd    : out    vl_logic_vector(2 downto 0);
        min_low_bcd     : out    vl_logic_vector(3 downto 0);
        min_high_bcd    : out    vl_logic_vector(2 downto 0);
        hr_low_bcd      : out    vl_logic_vector(3 downto 0);
        hr_high_bcd     : out    vl_logic_vector(1 downto 0)
    );
end Clock;
