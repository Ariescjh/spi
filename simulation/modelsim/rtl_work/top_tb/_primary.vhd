library verilog;
use verilog.vl_types.all;
entity top_tb is
    generic(
        period          : integer := 20;
        period_spi      : integer := 1000
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of period : constant is 1;
    attribute mti_svvh_generic_type of period_spi : constant is 1;
end top_tb;
