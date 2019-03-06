module spi_rx(
input		sw_flag1,
input		sw_flag2,
input		sw_flag3,
input		sw_flag4,
input		sw_flag5,
input		sw_flag6,
input		sw_flag7,

input		slave1_spi_miso,
input		slave2_spi_miso,
input		slave3_spi_miso,
input		slave4_spi_miso,
input		slave5_spi_miso,
input		slave6_spi_miso,
input		slave7_spi_miso,

output	reg mcu_spi_miso
);


wire [6:0]isel;
assign isel={sw_flag1,sw_flag2,sw_flag3,sw_flag4,sw_flag5,sw_flag6,sw_flag7};


always@(*)
begin
	case(isel)
		7'b1000000:mcu_spi_miso=slave1_spi_miso;
		7'b0100000:mcu_spi_miso=slave1_spi_miso;
		7'b0010000:mcu_spi_miso=slave1_spi_miso;
		7'b0001000:mcu_spi_miso=slave1_spi_miso;
		7'b0000100:mcu_spi_miso=slave1_spi_miso;
		7'b0000010:mcu_spi_miso=slave1_spi_miso;
		7'b0000001:mcu_spi_miso=slave1_spi_miso;
		default:mcu_spi_miso=1'b0;
	endcase
end


endmodule
