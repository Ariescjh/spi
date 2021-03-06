module main(
input		sys_clk,						//************systerm clock 48MHZ
input 	SPI_CLK,						//************SPI CLOCK 12MHz
input 	SPI_MOSI,					//************SPI DATA
output 	SPI_MISO,					//************SPI DATA

input 	SPI_CS,						//************SPI CS
//******************************************************************************//
output	slave1_spi_clk,
output	slave1_spi_mosi,
output	slave1_spi_cs,
input		slave1_spi_miso,
//******************************************************************************//
output	slave2_spi_clk,
output	slave2_spi_mosi,
output	slave2_spi_cs,
input		slave2_spi_miso,
//******************************************************************************//
output	slave3_spi_clk,
output	slave3_spi_mosi,
output	slave3_spi_cs,
input		slave3_spi_miso,
//******************************************************************************//
output	slave4_spi_clk,
output	slave4_spi_mosi,
output	slave4_spi_cs,
input		slave4_spi_miso,
//******************************************************************************//
output	slave5_spi_clk,
output	slave5_spi_mosi,
output	slave5_spi_cs,
input		slave5_spi_miso,
//******************************************************************************//
output	slave6_spi_clk,
output	slave6_spi_mosi,
output	slave6_spi_cs,
input		slave6_spi_miso,
//******************************************************************************//
output	slave7_spi_clk,
output	slave7_spi_mosi,
output	slave7_spi_cs,
input		slave7_spi_miso
//******************************************************************************//

);


wire		spi_sw_flag1;
wire		spi_sw_flag2;
wire		spi_sw_flag3;
wire		spi_sw_flag4;
wire		spi_sw_flag5;
wire		spi_sw_flag6;
wire		spi_sw_flag7;



detect	u_detect(
			.sys_clk(sys_clk),
			.sys_rst_n(),
			.spi_clk(SPI_CLK),
			.spi_cs(SPI_CS),
			.spi_cs1(spi_sw_flag1),
			.spi_cs2(spi_sw_flag2),
			.spi_cs3(spi_sw_flag3),
			.spi_cs4(spi_sw_flag4),
			.spi_cs5(spi_sw_flag5),
			.spi_cs6(spi_sw_flag6),
			.spi_cs7(spi_sw_flag7)

);

//******************************************************************************//

spi_module	u1_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave1_spi_clk),
		.slave_spi_mosi(slave1_spi_mosi),
		.slave_spi_cs(slave1_spi_cs),

		.sw_flag(spi_sw_flag1)

);

//******************************************************************************//
spi_module	u2_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave2_spi_clk),
		.slave_spi_mosi(slave2_spi_mosi),
		.slave_spi_cs(slave2_spi_cs),

		.sw_flag(spi_sw_flag2)

);

//******************************************************************************//
spi_module	u3_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave3_spi_clk),
		.slave_spi_mosi(slave3_spi_mosi),
		.slave_spi_cs(slave3_spi_cs),

		.sw_flag(spi_sw_flag3)

);

//******************************************************************************//
spi_module	u4_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave4_spi_clk),
		.slave_spi_mosi(slave4_spi_mosi),
		.slave_spi_cs(slave4_spi_cs),

		.sw_flag(spi_sw_flag4)

);

//******************************************************************************//
spi_module	u5_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave5_spi_clk),
		.slave_spi_mosi(slave5_spi_mosi),
		.slave_spi_cs(slave5_spi_cs),

		.sw_flag(spi_sw_flag5)

);

//******************************************************************************//
spi_module	u6_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave6_spi_clk),
		.slave_spi_mosi(slave6_spi_mosi),
		.slave_spi_cs(slave6_spi_cs),

		.sw_flag(spi_sw_flag6)

);

//******************************************************************************//
spi_module	u7_spi_module(
		.mcu_spi_clk(SPI_CLK),
		.mcu_spi_cs(SPI_CS),
		.mcu_spi_mosi(SPI_MOSI),
		

		
		.slave_spi_clk(slave7_spi_clk),
		.slave_spi_mosi(slave7_spi_mosi),
		.slave_spi_cs(slave7_spi_cs),

		.sw_flag(spi_sw_flag7)

);

//******************************************************************************//
spi_rx u_spi_rx(
		.sw_flag1(spi_sw_flag1),
		.sw_flag2(spi_sw_flag2),
		.sw_flag3(spi_sw_flag3),
		.sw_flag4(spi_sw_flag4),
		.sw_flag5(spi_sw_flag5),
		.sw_flag6(spi_sw_flag6),
		.sw_flag7(spi_sw_flag7),

		.slave1_spi_miso(slave1_spi_miso),
		.slave2_spi_miso(slave2_spi_miso),
		.slave3_spi_miso(slave3_spi_miso),
		.slave4_spi_miso(slave4_spi_miso),
		.slave5_spi_miso(slave5_spi_miso),
		.slave6_spi_miso(slave6_spi_miso),
		.slave7_spi_miso(slave7_spi_miso),

		.mcu_spi_miso(SPI_MISO)
);

//******************************************************************************//

endmodule
