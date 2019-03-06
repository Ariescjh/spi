library verilog;
use verilog.vl_types.all;
entity spi_rx is
    port(
        sw_flag1        : in     vl_logic;
        sw_flag2        : in     vl_logic;
        sw_flag3        : in     vl_logic;
        sw_flag4        : in     vl_logic;
        sw_flag5        : in     vl_logic;
        sw_flag6        : in     vl_logic;
        sw_flag7        : in     vl_logic;
        slave1_spi_miso : in     vl_logic;
        slave2_spi_miso : in     vl_logic;
        slave3_spi_miso : in     vl_logic;
        slave4_spi_miso : in     vl_logic;
        slave5_spi_miso : in     vl_logic;
        slave6_spi_miso : in     vl_logic;
        slave7_spi_miso : in     vl_logic;
        mcu_spi_miso    : out    vl_logic
    );
end spi_rx;
