open_project ./project_1.xpr
launch_runs impl_1 -jobs 3
wait_on_run impl_1
set_property -name {xsim.simulate.log_all_signals} -value {true} -objects [get_filesets sim_1]
launch_simulation -mode post-implementation -type timing
source full_adder_tb.tcl
