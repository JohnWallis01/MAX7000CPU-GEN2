transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/max
vmap max ./vhdl_libs/max
vcom -93 -work max {c:/program files/altera/13.0sp1/quartus/eda/sim_lib/max_atoms.vhd}
vcom -93 -work max {c:/program files/altera/13.0sp1/quartus/eda/sim_lib/max_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {AL_Controller.vho}

