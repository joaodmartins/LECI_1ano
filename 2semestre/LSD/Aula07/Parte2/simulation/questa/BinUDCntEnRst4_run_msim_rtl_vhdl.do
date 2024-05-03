transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joaod/Desktop/2semestre/LSD/Aula07/Parte2/BinUDCntEnRst4.vhd}

