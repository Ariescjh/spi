library verilog;
use verilog.vl_types.all;
entity detect is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        spi_clk         : in     vl_logic;
        spi_cs          : in     vl_logic;
        spi_cs1         : out    vl_logic;
        spi_cs2         : out    vl_logic;
        spi_cs3         : out    vl_logic;
        spi_cs4         : out    vl_logic;
        spi_cs5         : out    vl_logic;
        spi_cs6         : out    vl_logic;
        spi_cs7         : out    vl_logic
    );
end detect;
