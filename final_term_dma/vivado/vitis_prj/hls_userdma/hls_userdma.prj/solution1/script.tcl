############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project userdma
set_top userdma
add_files userdma.cpp
add_files userdma.h
add_files -tb userdma_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_export -output /home/ubuntu/Desktop/caravel-soc_fpga-lab/fsic_fpga/fsic_fpga/vivado/vitis_prj/hls_userdma
#source "./userdma/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/ubuntu/Desktop/caravel-soc_fpga-lab/fsic_fpga/fsic_fpga/vivado/vitis_prj/hls_userdma
