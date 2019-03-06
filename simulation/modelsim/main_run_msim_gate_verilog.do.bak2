transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {main.vo}

vlog -vlog01compat -work work +incdir+F:/fpga\ code/spi_interface/simulation/modelsim {F:/fpga code/spi_interface/simulation/modelsim/dectect.vt}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_dec

add wave *
view structure
view signals
run 1 ms
