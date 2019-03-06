module detect(
input				sys_clk,
input				sys_rst_n,

input				spi_clk,
input				spi_cs,


output			spi_cs1,
output			spi_cs2,
output			spi_cs3,
output			spi_cs4,
output			spi_cs5,
output			spi_cs6,
output			spi_cs7

);

reg[7:0]		count;
reg[3:0]		CS_D;
reg			count_full_flag;

reg			spi_clk_r0;
reg			spi_clk_r1;
wire			spi_clk_r;

reg			flag_1;
reg			flag_2;
reg			flag_3;
reg			flag_4;				
reg			flag_5;
reg			flag_6;
reg			flag_7;

//##############################################################//
always@(posedge sys_clk or negedge sys_rst_n)
begin
	if(sys_rst_n==1'b0)
		begin
			spi_clk_r0<=1'b0;
			spi_clk_r1<=1'b0;
		end
	else
		begin
			spi_clk_r0<=spi_clk;
			spi_clk_r1<=spi_clk_r0;
		end
	
end

assign	spi_clk_r = spi_clk_r0 & !spi_clk_r1;
//##############################################################//
always@(posedge sys_clk or negedge sys_rst_n)
begin
	if(sys_rst_n==1'b0)
		begin
			count<=8'd1;
			count_full_flag<=1'b0;
		end
	else if(spi_cs==1'b0 & spi_clk_r==1'b1 & count==8'd96)
		begin
			count<=8'd1;
			count_full_flag<=1'b1;
		end
	else if(spi_cs==1'b0 & spi_clk_r==1'b1)
		begin
			count<=count+8'd1;
			count_full_flag<=1'b0;
		end
	else if(spi_cs==1'b0 & spi_clk_r==1'b0)
		begin
			count<=count;
			count_full_flag<=1'b0;
		end
	else
		begin
			count<=8'd1;
			count_full_flag<=1'b0;
		end
end


//##############################################################//
always@(posedge sys_clk or negedge sys_rst_n)
begin
	if(sys_rst_n==1'b0)
		begin
			CS_D<=4'h0;
			flag_1<=1'b0;
			flag_2<=1'b0;
			flag_3<=1'b0;
			flag_4<=1'b0;				
			flag_5<=1'b0;
			flag_6<=1'b0;
			flag_7<=1'b0;		
		end
	else if(spi_cs==1'b0)
		begin
			case(CS_D)
			4'h0:begin
						flag_1<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h1;
							end
					end
			4'h1:begin
						flag_1<=1'b0;
						flag_2<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h2;
							end
					end
			4'h2:begin
						flag_2<=1'b0;
						flag_3<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h3;
							end
					end
			4'h3:begin
						flag_3<=1'b0;
						flag_4<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h4;
							end
					end
			4'h4:begin
						flag_4<=1'b0;
						flag_5<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h5;
							end
					end
			4'h5:begin
						flag_5<=1'b0;
						flag_6<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h6;
							end
					end
			4'h6:begin
						flag_6<=1'b0;
						flag_7<=1'b1;
						if(count_full_flag==1'b1)
							begin
								CS_D<=4'h7;
							end
					end
			4'h7:begin
						CS_D<=4'h0;
					end
					
			default:CS_D<=4'h0;
			endcase
		end
	else
		begin
			CS_D<=4'h0;
			flag_1<=1'b0;
			flag_2<=1'b0;
			flag_3<=1'b0;
			flag_4<=1'b0;				
			flag_5<=1'b0;
			flag_6<=1'b0;
			flag_7<=1'b0;	
		end	
end
//##############################################################//
assign			spi_cs1=flag_1;
assign			spi_cs2=flag_2;
assign			spi_cs3=flag_3;
assign			spi_cs4=flag_4;
assign			spi_cs5=flag_5;
assign			spi_cs6=flag_6;
assign			spi_cs7=flag_7;

//##############################################################//

endmodule
