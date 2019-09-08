#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 09/08/2019 10:34:48
#
#####################################################################


read_mmmc /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/synth/RESULTS/mtm_Alu.mmmc.tcl

read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}

read_netlist /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/synth/RESULTS/mtm_Alu.v

init_design
