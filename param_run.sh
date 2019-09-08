#!/bin/bash
# PPCU_VLSI project
# This is a template script to run genus and p&r

# set paths
cd /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/synth

# run synthesis in batch mode
source run_synth.sh

# set paths
cd /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/pr

# run p&r in batch mode
source clean.sh
source run_pr_auto.sh

#innovus source run_pr.tcl

# set paths
cd /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/run_post

source clean.sh
source run_sim_post.sh

cd /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/power

source clean.sh
mkdir x
source run_power.sh

cd /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog
