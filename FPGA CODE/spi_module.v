module spi_module(
input		mcu_spi_clk,
input		mcu_spi_cs,
input		mcu_spi_mosi,



output	slave_spi_clk,
output	slave_spi_mosi,
output	slave_spi_cs,

input		sw_flag

);




assign	slave_spi_clk=(sw_flag)?mcu_spi_clk:1'b0;
assign	slave_spi_mosi=(sw_flag)?mcu_spi_mosi:1'b0;
assign	slave_spi_cs=(mcu_spi_cs==1'b0)?!sw_flag:1'b1;


endmodule
