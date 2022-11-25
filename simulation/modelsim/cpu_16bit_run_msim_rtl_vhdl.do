transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/iitb-cpu/DUT.vhdl}
vcom -93 -work work {D:/iitb-cpu/RAM_65536X16.vhdl}
vcom -93 -work work {D:/iitb-cpu/Register.vhdl}
vcom -93 -work work {D:/iitb-cpu/register_file.vhdl}
vcom -93 -work work {D:/iitb-cpu/addSub16.vhdl}
vcom -93 -work work {D:/iitb-cpu/cpu_16bit.vhdl}
vcom -93 -work work {D:/iitb-cpu/alu_rij.vhdl}

vcom -93 -work work {D:/iitb-cpu/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
