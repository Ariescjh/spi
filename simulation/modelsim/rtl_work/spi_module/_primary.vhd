library verilog;
use verilog.vl_types.all;
entity spi_module is
    port(
        mcu_spi_clk     : in     vl_logic;
        mcu_spi_cs      : in     vl_logic;
        mcu_spi_mosi    : in     vl_logic;
        slave_spi_clk   : out    vl_logic;
        slave_spi_mosi  : out    vl_logic;
        slave_spi_cs    : out    vl_logic;
        sw_flag         : in     vl_logic
    );
end spi_module;
