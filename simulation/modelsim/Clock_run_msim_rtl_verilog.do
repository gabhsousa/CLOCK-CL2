transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Victor/Desktop/Clock {C:/Users/Victor/Desktop/Clock/ClockDivider_1Hz.sv}
vlog -sv -work work +incdir+C:/Users/Victor/Desktop/Clock {C:/Users/Victor/Desktop/Clock/Clock.sv}
vlog -sv -work work +incdir+C:/Users/Victor/Desktop/Clock {C:/Users/Victor/Desktop/Clock/HourCounter.sv}
vlog -sv -work work +incdir+C:/Users/Victor/Desktop/Clock {C:/Users/Victor/Desktop/Clock/MinuteCounter.sv}
vlog -sv -work work +incdir+C:/Users/Victor/Desktop/Clock {C:/Users/Victor/Desktop/Clock/SecondCounter.sv}

