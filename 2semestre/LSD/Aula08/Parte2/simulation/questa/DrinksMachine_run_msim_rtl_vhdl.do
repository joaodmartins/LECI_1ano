transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaod/Desktop/LECI_1ano/2semestre/LSD/Aula08/Parte2/DrinksFSM.vhd}
vcom -93 -work work {C:/Users/joaod/Desktop/LECI_1ano/2semestre/LSD/Aula08/Parte2/DrinksMachine.vhd}
vcom -93 -work work {C:/Users/joaod/Desktop/LECI_1ano/2semestre/LSD/Aula08/Parte2/DebounceUnit.vhd}
vcom -93 -work work {C:/Users/joaod/Desktop/LECI_1ano/2semestre/LSD/Aula08/Parte2/TimerN.vhd}

