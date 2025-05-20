onerror {quit -f}
vlib work
vlog -work work Clock.vo
vlog -work work Clock.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Clock_vlg_vec_tst
vcd file -direction Clock.msim.vcd
vcd add -internal Clock_vlg_vec_tst/*
vcd add -internal Clock_vlg_vec_tst/i1/*
add wave /*
run -all
