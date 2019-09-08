# dump net switching activity into a file
# (to be used for dynamic power estimation)
dumptcf \
  -scope DUT \
  -overwrite \
  -dumpwireasnet \
  -output RESULTS/mtm_Alu.tcf

# run simulation
run

# finish
exit
