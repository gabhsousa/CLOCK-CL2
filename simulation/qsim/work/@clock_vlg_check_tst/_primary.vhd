library verilog;
use verilog.vl_types.all;
entity Clock_vlg_check_tst is
    port(
        hr_high_bcd     : in     vl_logic_vector(1 downto 0);
        hr_low_bcd      : in     vl_logic_vector(3 downto 0);
        min_high_bcd    : in     vl_logic_vector(2 downto 0);
        min_low_bcd     : in     vl_logic_vector(3 downto 0);
        sec_high_bcd    : in     vl_logic_vector(2 downto 0);
        sec_low_bcd     : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Clock_vlg_check_tst;
