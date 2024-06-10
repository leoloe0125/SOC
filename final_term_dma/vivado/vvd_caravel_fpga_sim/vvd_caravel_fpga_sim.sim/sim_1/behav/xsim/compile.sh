#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Thu May 16 13:13:54 CST 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
# compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -L uvm -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip -prj fsic_tb_vlog.prj"
xvlog --incr --relax -L uvm -L axi_vip_v1_1_15 -L smartconnect_v1_0 -L xilinx_vip -prj fsic_tb_vlog.prj 2>&1 | tee compile.log

# compile VHDL design sources
echo "xvhdl --incr --relax -prj fsic_tb_vhdl.prj"
xvhdl --incr --relax -prj fsic_tb_vhdl.prj 2>&1 | tee -a compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."
