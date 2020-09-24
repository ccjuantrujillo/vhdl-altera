onerror {quit -f}
vlib work
vlog -work work Multiplexor.vo
vlog -work work Multiplexor.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Multiplexor_vlg_vec_tst
vcd file -direction Multiplexor.msim.vcd
vcd add -internal Multiplexor_vlg_vec_tst/*
vcd add -internal Multiplexor_vlg_vec_tst/i1/*
add wave /*
run -all
