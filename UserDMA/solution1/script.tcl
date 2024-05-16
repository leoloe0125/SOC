############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project UserDMA
set_top userdma
add_files UserDMA/userdma.cpp
add_files UserDMA/userdma.h
add_files -tb UserDMA/userdma_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/leolo/Project/SOC/UserDMA -rtl verilog
#source "./UserDMA/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/leolo/Project/SOC/UserDMA
