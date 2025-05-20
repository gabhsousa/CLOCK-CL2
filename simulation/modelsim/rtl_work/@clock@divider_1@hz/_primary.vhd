library verilog;
use verilog.vl_types.all;
entity ClockDivider_1Hz is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pulse_out       : out    vl_logic
    );
end ClockDivider_1Hz;
