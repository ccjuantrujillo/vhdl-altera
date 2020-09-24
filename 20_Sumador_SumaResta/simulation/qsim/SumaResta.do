onerror {quit -f}
vlib work
vlog -work work SumaResta.vo
vlog -work work SumaResta.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SumaResta_vlg_vec_tst
vcd file -direction SumaResta.msim.vcd
vcd add -internal SumaResta_vlg_vec_tst/*
vcd add -internal SumaResta_vlg_vec_tst/i1/*
add wave /*
run -all
