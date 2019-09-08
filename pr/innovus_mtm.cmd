#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep  8 10:34:59 2019                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.13-s098_1 (64bit) 02/08/2018 11:26 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.13-s098_1 NR180117-1602/17_13-UB (database version 2.30, 414.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.13-s036 (64bit) 02/08/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.13-s031_1 () Feb  1 2018 09:16:44 ( )
#@(#)CDS: SYNTECH 17.13-s011_1 () Jan 14 2018 01:24:42 ( )
#@(#)CDS: CPE v17.13-s062
#@(#)CDS: IQRC/TQRC 16.1.1-s220 (64bit) Fri Aug  4 09:53:48 PDT 2017 (Linux 2.6.18-194.el5)

set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db init_power_nets {vddd vddb}
set_db init_ground_nets {gndd gndb}
is_attribute flow_edit_wildcard_end_steps -obj_type root
set_db flow_edit_wildcard_end_steps {}
is_attribute flow_edit_wildcard_start_steps -obj_type root
set_db flow_edit_wildcard_start_steps {}
is_attribute flow_footer_tcl -obj_type root
set_db flow_footer_tcl {}
is_attribute flow_header_tcl -obj_type root
set_db flow_header_tcl {}
is_attribute flow_metadata -obj_type root
set_db flow_metadata {}
is_attribute flow_step_begin_tcl -obj_type root
set_db flow_step_begin_tcl {}
is_attribute flow_step_check_tcl -obj_type root
set_db flow_step_check_tcl {}
is_attribute flow_step_end_tcl -obj_type root
set_db flow_step_end_tcl {}
is_attribute flow_step_order -obj_type root
set_db flow_step_order {}
is_attribute flow_summary_tcl -obj_type root
set_db flow_summary_tcl {}
is_attribute flow_template_feature_definition -obj_type root
set_db flow_template_feature_definition {}
is_attribute flow_template_type -obj_type root
set_db flow_template_type {}
is_attribute flow_template_version -obj_type root
set_db flow_template_version {}
is_attribute flow_user_templates -obj_type root
set_db flow_user_templates {}
is_attribute flow_branch -obj_type root
set_db flow_branch {}
is_attribute flow_caller_data -obj_type root
set_db flow_caller_data {}
is_attribute flow_current -obj_type root
set_db flow_current {}
is_attribute flow_hier_path -obj_type root
set_db flow_hier_path {}
is_attribute flow_database_directory -obj_type root
set_db flow_database_directory dbs
is_attribute flow_exit_when_done -obj_type root
set_db flow_exit_when_done false
is_attribute flow_history -obj_type root
set_db flow_history {}
is_attribute flow_log_directory -obj_type root
set_db flow_log_directory logs
is_attribute flow_mail_on_error -obj_type root
set_db flow_mail_on_error false
is_attribute flow_mail_to -obj_type root
set_db flow_mail_to {}
is_attribute flow_metrics_file -obj_type root
set_db flow_metrics_file {}
is_attribute flow_metrics_snapshot_parent_uuid -obj_type root
set_db flow_metrics_snapshot_parent_uuid {}
is_attribute flow_metrics_snapshot_uuid -obj_type root
set_db flow_metrics_snapshot_uuid 0a77016c
is_attribute flow_overwrite_database -obj_type root
set_db flow_overwrite_database false
is_attribute flow_report_directory -obj_type root
set_db flow_report_directory reports
is_attribute flow_run_tag -obj_type root
set_db flow_run_tag {}
is_attribute flow_schedule -obj_type root
set_db flow_schedule {}
is_attribute flow_script -obj_type root
set_db flow_script {}
is_attribute flow_starting_db -obj_type root
set_db flow_starting_db {}
is_attribute flow_status_file -obj_type root
set_db flow_status_file {}
is_attribute flow_step_canonical_current -obj_type root
set_db flow_step_canonical_current {}
is_attribute flow_step_current -obj_type root
set_db flow_step_current {}
is_attribute flow_step_last -obj_type root
set_db flow_step_last {}
is_attribute flow_step_last_msg -obj_type root
set_db flow_step_last_msg {}
is_attribute flow_step_last_status -obj_type root
set_db flow_step_last_status not_run
is_attribute flow_step_next -obj_type root
set_db flow_step_next {}
is_attribute flow_working_directory -obj_type root
set_db flow_working_directory .
read_mmmc /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/synth/RESULTS/mtm_Alu.mmmc.tcl
read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}
read_netlist /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/synth/RESULTS/mtm_Alu.v
init_design
read_metric -id current /home/student/moleszkowicz/PPCU_VLSI/PPCU_VLSI_2019_projekt_verilog/synth/RESULTS/mtm_Alu.metrics.json
set_db timing_apply_default_primary_input_assertion false
set_db timing_clock_phase_propagation both
set_db timing_analysis_async_checks no_async
set_db extract_rc_layer_independent 1
set_db design_process_node 180
set_db place_global_reorder_scan false
set_db extract_rc_engine pre_route
is_attribute -obj_type port original_name
is_attribute -obj_type pin original_name
is_attribute -obj_type pin is_phase_inverted
set_db port:mtm_Alu/clk .original_name clk
set_db port:mtm_Alu/rst_n .original_name rst_n
set_db port:mtm_Alu/sin .original_name sin
set_db port:mtm_Alu/sout .original_name sout
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]/NQ} .original_name {u_mtm_Alu_core/CTL_out[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[0]/Q} .original_name {u_mtm_Alu_core/CTL_out[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]/NQ} .original_name {u_mtm_Alu_core/CTL_out[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[1]/Q} .original_name {u_mtm_Alu_core/CTL_out[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]/NQ} .original_name {u_mtm_Alu_core/CTL_out[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[2]/Q} .original_name {u_mtm_Alu_core/CTL_out[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]/NQ} .original_name {u_mtm_Alu_core/CTL_out[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[3]/Q} .original_name {u_mtm_Alu_core/CTL_out[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]/NQ} .original_name {u_mtm_Alu_core/CTL_out[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[4]/Q} .original_name {u_mtm_Alu_core/CTL_out[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]/NQ} .original_name {u_mtm_Alu_core/CTL_out[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[5]/Q} .original_name {u_mtm_Alu_core/CTL_out[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]/NQ} .original_name {u_mtm_Alu_core/CTL_out[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[6]/Q} .original_name {u_mtm_Alu_core/CTL_out[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]/NQ} .original_name {u_mtm_Alu_core/CTL_out[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/CTL_out_reg[7]/Q} .original_name {u_mtm_Alu_core/CTL_out[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[0]/NQ} .original_name {u_mtm_Alu_core/C[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[0]/Q} .original_name {u_mtm_Alu_core/C[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[1]/NQ} .original_name {u_mtm_Alu_core/C[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[1]/Q} .original_name {u_mtm_Alu_core/C[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[2]/NQ} .original_name {u_mtm_Alu_core/C[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[2]/Q} .original_name {u_mtm_Alu_core/C[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[3]/NQ} .original_name {u_mtm_Alu_core/C[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[3]/Q} .original_name {u_mtm_Alu_core/C[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[4]/NQ} .original_name {u_mtm_Alu_core/C[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[4]/Q} .original_name {u_mtm_Alu_core/C[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[5]/NQ} .original_name {u_mtm_Alu_core/C[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[5]/Q} .original_name {u_mtm_Alu_core/C[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[6]/NQ} .original_name {u_mtm_Alu_core/C[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[6]/Q} .original_name {u_mtm_Alu_core/C[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[7]/NQ} .original_name {u_mtm_Alu_core/C[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[7]/Q} .original_name {u_mtm_Alu_core/C[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[8]/NQ} .original_name {u_mtm_Alu_core/C[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[8]/Q} .original_name {u_mtm_Alu_core/C[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[9]/NQ} .original_name {u_mtm_Alu_core/C[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[9]/Q} .original_name {u_mtm_Alu_core/C[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[10]/NQ} .original_name {u_mtm_Alu_core/C[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[10]/Q} .original_name {u_mtm_Alu_core/C[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[11]/NQ} .original_name {u_mtm_Alu_core/C[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[11]/Q} .original_name {u_mtm_Alu_core/C[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[12]/NQ} .original_name {u_mtm_Alu_core/C[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[12]/Q} .original_name {u_mtm_Alu_core/C[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[13]/NQ} .original_name {u_mtm_Alu_core/C[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[13]/Q} .original_name {u_mtm_Alu_core/C[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[14]/NQ} .original_name {u_mtm_Alu_core/C[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[14]/Q} .original_name {u_mtm_Alu_core/C[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[15]/NQ} .original_name {u_mtm_Alu_core/C[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[15]/Q} .original_name {u_mtm_Alu_core/C[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[16]/NQ} .original_name {u_mtm_Alu_core/C[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[16]/Q} .original_name {u_mtm_Alu_core/C[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[17]/NQ} .original_name {u_mtm_Alu_core/C[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[17]/Q} .original_name {u_mtm_Alu_core/C[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[18]/NQ} .original_name {u_mtm_Alu_core/C[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[18]/Q} .original_name {u_mtm_Alu_core/C[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[19]/NQ} .original_name {u_mtm_Alu_core/C[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[19]/Q} .original_name {u_mtm_Alu_core/C[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[20]/NQ} .original_name {u_mtm_Alu_core/C[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[20]/Q} .original_name {u_mtm_Alu_core/C[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[21]/NQ} .original_name {u_mtm_Alu_core/C[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[21]/Q} .original_name {u_mtm_Alu_core/C[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[22]/NQ} .original_name {u_mtm_Alu_core/C[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[22]/Q} .original_name {u_mtm_Alu_core/C[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[23]/NQ} .original_name {u_mtm_Alu_core/C[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[23]/Q} .original_name {u_mtm_Alu_core/C[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[24]/NQ} .original_name {u_mtm_Alu_core/C[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[24]/Q} .original_name {u_mtm_Alu_core/C[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[25]/NQ} .original_name {u_mtm_Alu_core/C[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[25]/Q} .original_name {u_mtm_Alu_core/C[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[26]/NQ} .original_name {u_mtm_Alu_core/C[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[26]/Q} .original_name {u_mtm_Alu_core/C[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[27]/NQ} .original_name {u_mtm_Alu_core/C[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[27]/Q} .original_name {u_mtm_Alu_core/C[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[28]/NQ} .original_name {u_mtm_Alu_core/C[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[28]/Q} .original_name {u_mtm_Alu_core/C[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[29]/NQ} .original_name {u_mtm_Alu_core/C[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[29]/Q} .original_name {u_mtm_Alu_core/C[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[30]/NQ} .original_name {u_mtm_Alu_core/C[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[30]/Q} .original_name {u_mtm_Alu_core/C[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[31]/NQ} .original_name {u_mtm_Alu_core/C[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/C_reg[31]/Q} .original_name {u_mtm_Alu_core/C[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/A[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/A[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/A[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/A[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/A[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/A[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/A[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/A[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/A[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/A[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/A[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/A[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/A[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/A[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/A[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/A[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/A[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/A[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/A[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/A[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/A[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/A[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/A[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/A[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/A[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/A[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/A[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/A[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/A[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/A[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/A[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/A[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/A[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/A[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/A[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/A[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/A[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/A[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/A[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/A[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/A[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/A[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/A[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/A[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/A[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/A[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/A[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/A[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/A[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/A[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/A[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/A[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/A[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/A[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/A[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/A[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/A[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/A[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/A[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/A[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/A[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/A[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/A[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/A_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/A[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/B[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/B[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/B[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/B[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/B[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/B[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/B[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/B[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/B[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/B[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/B[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/B[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/B[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/B[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/B[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/B[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/B[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/B[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/B[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/B[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/B[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/B[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/B[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/B[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/B[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/B[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/B[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/B[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/B[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/B[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/B[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/B[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/B[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/B[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/B[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/B[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/B[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/B[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/B[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/B[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/B[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/B[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/B[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/B[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/B[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/B[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/B[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/B[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/B[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/B[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/B[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/B[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/B[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/B[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/B[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/B[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/B[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/B[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/B[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/B[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/B[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/B[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/B[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/B_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/B[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/Buff[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/Buff[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/Buff[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/Buff[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/Buff[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/Buff[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/Buff[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/Buff[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/Buff[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/Buff[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/Buff[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/Buff[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/Buff[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/Buff[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/Buff[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/Buff[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/Buff[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/Buff[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/Buff[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/Buff[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/Buff[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/Buff[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/Buff[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/Buff[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/Buff[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/Buff[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/Buff[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/Buff[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/Buff[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/Buff[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/Buff[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/Buff[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[32]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[32]/Q} .original_name {u_mtm_Alu_deserializer/Buff[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[33]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[33]/Q} .original_name {u_mtm_Alu_deserializer/Buff[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[34]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[34]/Q} .original_name {u_mtm_Alu_deserializer/Buff[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[35]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[35]/Q} .original_name {u_mtm_Alu_deserializer/Buff[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[36]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[36]/Q} .original_name {u_mtm_Alu_deserializer/Buff[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[37]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[37]/Q} .original_name {u_mtm_Alu_deserializer/Buff[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[38]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[38]/Q} .original_name {u_mtm_Alu_deserializer/Buff[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[39]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[39]/Q} .original_name {u_mtm_Alu_deserializer/Buff[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[40]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[40]/Q} .original_name {u_mtm_Alu_deserializer/Buff[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[41]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[41]/Q} .original_name {u_mtm_Alu_deserializer/Buff[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[42]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[42]/Q} .original_name {u_mtm_Alu_deserializer/Buff[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[43]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[43]/Q} .original_name {u_mtm_Alu_deserializer/Buff[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[44]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[44]/Q} .original_name {u_mtm_Alu_deserializer/Buff[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[45]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[45]/Q} .original_name {u_mtm_Alu_deserializer/Buff[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[46]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[46]/Q} .original_name {u_mtm_Alu_deserializer/Buff[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[47]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[47]/Q} .original_name {u_mtm_Alu_deserializer/Buff[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[48]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[48]/Q} .original_name {u_mtm_Alu_deserializer/Buff[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[49]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[49]/Q} .original_name {u_mtm_Alu_deserializer/Buff[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[50]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[50]/Q} .original_name {u_mtm_Alu_deserializer/Buff[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[51]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[51]/Q} .original_name {u_mtm_Alu_deserializer/Buff[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[52]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[52]/Q} .original_name {u_mtm_Alu_deserializer/Buff[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[53]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[53]/Q} .original_name {u_mtm_Alu_deserializer/Buff[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[54]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[54]/Q} .original_name {u_mtm_Alu_deserializer/Buff[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[55]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[55]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[55]/Q} .original_name {u_mtm_Alu_deserializer/Buff[55]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[56]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[56]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[56]/Q} .original_name {u_mtm_Alu_deserializer/Buff[56]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[57]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[57]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[57]/Q} .original_name {u_mtm_Alu_deserializer/Buff[57]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[58]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[58]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[58]/Q} .original_name {u_mtm_Alu_deserializer/Buff[58]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[59]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[59]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[59]/Q} .original_name {u_mtm_Alu_deserializer/Buff[59]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[60]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[60]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[60]/Q} .original_name {u_mtm_Alu_deserializer/Buff[60]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[61]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[61]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[61]/Q} .original_name {u_mtm_Alu_deserializer/Buff[61]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[62]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[62]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[62]/Q} .original_name {u_mtm_Alu_deserializer/Buff[62]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[63]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[63]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[63]/Q} .original_name {u_mtm_Alu_deserializer/Buff[63]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[64]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[64]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[64]/Q} .original_name {u_mtm_Alu_deserializer/Buff[64]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[65]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[65]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[65]/Q} .original_name {u_mtm_Alu_deserializer/Buff[65]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[66]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[66]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[66]/Q} .original_name {u_mtm_Alu_deserializer/Buff[66]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[67]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[67]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[67]/Q} .original_name {u_mtm_Alu_deserializer/Buff[67]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[68]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[68]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[68]/Q} .original_name {u_mtm_Alu_deserializer/Buff[68]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[69]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[69]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[69]/Q} .original_name {u_mtm_Alu_deserializer/Buff[69]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[70]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[70]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[70]/Q} .original_name {u_mtm_Alu_deserializer/Buff[70]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[71]/NQ} .original_name {u_mtm_Alu_deserializer/Buff[71]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/Buff_reg[71]/Q} .original_name {u_mtm_Alu_deserializer/Buff[71]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/CTL[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/CTL[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/CTL[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/CTL[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/CTL[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/CTL[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/CTL[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/CTL[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/CTL_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/CTL[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/bit_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_counter_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/bit_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/byte_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/byte_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/byte_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/byte_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/byte_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/byte_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/byte_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/byte_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/byte_counter[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/byte_counter_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/byte_counter[4]/q}
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/crc_error_reg/NQ .original_name u_mtm_Alu_deserializer/crc_error/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/crc_error_reg/Q .original_name u_mtm_Alu_deserializer/crc_error/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/op_error_reg/NQ .original_name u_mtm_Alu_deserializer/op_error/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/op_error_reg/Q .original_name u_mtm_Alu_deserializer/op_error/q
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/state[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/state[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[0]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[1]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[2]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[3]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[4]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[5]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[6]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/CTL_buff[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/CTL_buff_reg[7]/Q} .original_name {u_mtm_Alu_serializer/CTL_buff[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[0]/Q} .original_name {u_mtm_Alu_serializer/C_buff[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[1]/Q} .original_name {u_mtm_Alu_serializer/C_buff[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[2]/Q} .original_name {u_mtm_Alu_serializer/C_buff[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[3]/Q} .original_name {u_mtm_Alu_serializer/C_buff[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[4]/Q} .original_name {u_mtm_Alu_serializer/C_buff[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[5]/Q} .original_name {u_mtm_Alu_serializer/C_buff[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[6]/Q} .original_name {u_mtm_Alu_serializer/C_buff[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[7]/Q} .original_name {u_mtm_Alu_serializer/C_buff[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[8]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[8]/Q} .original_name {u_mtm_Alu_serializer/C_buff[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[9]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[9]/Q} .original_name {u_mtm_Alu_serializer/C_buff[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[10]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[10]/Q} .original_name {u_mtm_Alu_serializer/C_buff[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[11]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[11]/Q} .original_name {u_mtm_Alu_serializer/C_buff[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[12]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[12]/Q} .original_name {u_mtm_Alu_serializer/C_buff[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[13]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[13]/Q} .original_name {u_mtm_Alu_serializer/C_buff[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[14]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[14]/Q} .original_name {u_mtm_Alu_serializer/C_buff[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[15]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[15]/Q} .original_name {u_mtm_Alu_serializer/C_buff[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[16]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[16]/Q} .original_name {u_mtm_Alu_serializer/C_buff[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[17]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[17]/Q} .original_name {u_mtm_Alu_serializer/C_buff[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[18]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[18]/Q} .original_name {u_mtm_Alu_serializer/C_buff[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[19]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[19]/Q} .original_name {u_mtm_Alu_serializer/C_buff[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[20]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[20]/Q} .original_name {u_mtm_Alu_serializer/C_buff[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[21]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[21]/Q} .original_name {u_mtm_Alu_serializer/C_buff[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[22]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[22]/Q} .original_name {u_mtm_Alu_serializer/C_buff[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[23]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[23]/Q} .original_name {u_mtm_Alu_serializer/C_buff[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[24]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[24]/Q} .original_name {u_mtm_Alu_serializer/C_buff[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[25]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[25]/Q} .original_name {u_mtm_Alu_serializer/C_buff[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[26]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[26]/Q} .original_name {u_mtm_Alu_serializer/C_buff[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[27]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[27]/Q} .original_name {u_mtm_Alu_serializer/C_buff[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[28]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[28]/Q} .original_name {u_mtm_Alu_serializer/C_buff[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[29]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[29]/Q} .original_name {u_mtm_Alu_serializer/C_buff[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[30]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[30]/Q} .original_name {u_mtm_Alu_serializer/C_buff[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[31]/NQ} .original_name {u_mtm_Alu_serializer/C_buff[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/C_buff_reg[31]/Q} .original_name {u_mtm_Alu_serializer/C_buff[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[0]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[1]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[2]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[3]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[4]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[5]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[6]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/bit_counter[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_counter_reg[7]/Q} .original_name {u_mtm_Alu_serializer/bit_counter[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[0]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[1]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[2]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[3]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[4]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[5]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[6]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/byte_counter[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/byte_counter_reg[7]/Q} .original_name {u_mtm_Alu_serializer/byte_counter[7]/q}
set_db pin:mtm_Alu/u_mtm_Alu_serializer/sout_reg/NQ .original_name u_mtm_Alu_serializer/sout/q
set_db pin:mtm_Alu/u_mtm_Alu_serializer/sout_reg/Q .original_name u_mtm_Alu_serializer/sout/q
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]/Q} .original_name {u_mtm_Alu_serializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]/Q} .original_name {u_mtm_Alu_serializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/state[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[2]/Q} .original_name {u_mtm_Alu_serializer/state[2]/q}
eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
connect_global_net vddd -type pg_pin -pin_base_name vddd -verbose
connect_global_net gndd -type pg_pin -pin_base_name gndd -verbose
connect_global_net vddb -type pg_pin -pin_base_name vddb -verbose
connect_global_net gndb -type pg_pin -pin_base_name gndb -verbose
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
create_floorplan -site CoreSite -core_density_size 1.0 0.7 20.0 20.0 20.0 20.0
add_rings -nets {vddd gndd} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 5 bottom 5 left 5 right 5} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corners {lt rt lb rb } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
add_rings -nets {vddb gndb} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 2 bottom 2 left 2 right 2} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 13 bottom 13 left 13 right 13} -center 0 -extend_corners {lt rt lb rb } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
eval_legacy { addStripe -nets {vddd gndd} -layer ME4 -direction vertical -width 5 -spacing 0.28 -number_of_sets 1 -start_from left -start_offset 137 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
eval_legacy { addStripe -nets {vddd gndd} -layer ME5 -direction horizontal -width 5 -spacing 0.28 -number_of_sets 1 -start_from bottom -start_offset 136 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
route_special -connect core_pin -layer_change_range { ME1(1) ME6(6) } -block_pin_target nearest_target -core_pin_target first_after_row_end -allow_jogging 0 -crossover_via_layer_range { ME1(1) ME6(6) } -nets { vddd gndd vddb gndb } -allow_layer_change 1 -target_via_layer_range { ME1(1) ME6(6) }
read_io_file mtm_Alu.save.io
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db timing_analysis_type ocv
set_db timing_analysis_cppr both
check_timing
time_design -pre_place -report_prefix 04_preplace -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
place_opt_design -report_prefix 05_place_opt -report_dir ./timingReports
set_db add_tieoffs_cells { UCL_TIEHI UCL_TIELO }
add_tieoffs
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
time_design -pre_cts -report_prefix 06_prects -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db cts_inverter_cells UCL_INV4
set_db cts_buffer_cells {UCL_BUF4 UCL_BUF8 UCL_BUF8_2}
set_db cts_target_max_transition_time 0.3
clock_design
report_clock_trees -summary -out_file ./timingReports/07_clock_tree_summary.txt
report_clock_tree_structure -out_file ./timingReports/07_clock_tree_structure.txt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
opt_design -post_cts -report_prefix 08a_postCts_setup -report_dir ./timingReports
opt_design -post_cts -hold -report_prefix 08b_postCts_hold -report_dir ./timingReports
opt_design -post_cts -drv -report_prefix 08c_postCts_drv -report_dir ./timingReports
time_design -post_cts -report_prefix 08d_time_postCts_setup -report_dir ./timingReports
time_design -post_cts -hold -report_prefix 08e_time_postCts_hold -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db add_fillers_cells { UCL_CAP9 UCL_CAP8 UCL_CAP7 UCL_CAP6 UCL_CAP5 UCL_FILL }
set_db add_fillers_prefix FILLER
add_fillers
set_db route_design_with_via_in_pin 1:1
set_db route_design_with_via_only_for_lib_cell_pin 1:1
set_db route_design_with_timing_driven 1
set_db route_design_with_si_driven 0
set_db route_design_detail_post_route_swap_via multiCut
route_design -global_detail -via_opt -wire_opt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db extract_rc_engine post_route
set_db extract_rc_effort_level medium
set_db delaycal_enable_si true
set_db opt_post_route_drv_recovery true
set_db opt_effort high
opt_design -post_route -drv -report_prefix 10a_opt_post_route_drv -report_dir ./timingReports
opt_design -post_route -setup -hold -report_prefix 10b_opt_post_route_setup_hold -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db extract_rc_engine post_route
set_db extract_rc_effort_level signoff
set_db extract_rc_coupled true
set_db extract_rc_lef_tech_file_map /cad/dk/umc180/SUS/lefdef.layermap
extract_rc
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
all_clocks
set_propagated_clock [all_clocks]
set_db timing_analysis_async_checks async
set_distributed_hosts -local
set_multi_cpu_usage -local_cpu 1 -remote_host 1 -cpu_per_remote_host 1
time_design_signoff -report_dir ./timingReports -report_prefix 12_signoff_time -report_only
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
check_drc -out_file ./timingReports/14_check_drc.rpt
check_connectivity -out_file ./timingReports/14_check_connectivity.rpt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
report_qor -format html -file ./timingReports/15_qor.html
report_area -out_file ./timingReports/15_area.rpt
write_db ./RESULTS_PR/mtm_Alu_innovus
write_sdf \
    -edges noedge \
    -max_view WC_av \
    -min_view BC_av \
    $resultDir/${DESIGN}.sdf.gz
write_netlist ./RESULTS_PR/mtm_Alu.noPower.v.gz
set_db write_stream_label_all_pin_shape true
set_db write_stream_check_map_file true
write_stream ./RESULTS_PR/mtm_Alu.gds.gz -map_file /cad/dk/umc180/SUS/UMC_18_CMOS.layermap
