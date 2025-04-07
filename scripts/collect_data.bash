#!/bin/bash

# Define the redundant part
dmc_620_command="runcpu -c mem_bw_dmc_620 --action=onlyrun --size=ref"
cmn_mc_command="runcpu -c mem_bw_cmn_mc --action=onlyrun --size=ref"
watch_point_command="runcpu -c mem_bw_watch_point --action=onlyrun --size=ref"
llc_command="runcpu -c mem_bw_llc --action=onlyrun --size=ref"
warm_up_command="runcpu -c mem_bw --action=onlyrun --size=ref"

# Define a list of all benchmark names
benchmarks=(
    "500.perlbench_r"
    "502.gcc_r"
    "505.mcf_r"
    "520.omnetpp_r"
    "523.xalancbmk_r"
    "525.x264_r"
    "531.deepsjeng_r"
    "541.leela_r"
    "548.exchange2_r"
    "557.xz_r"
    "503.bwaves_r"
    "507.cactuBSSN_r"
    "508.namd_r"
    "510.parest_r"
    "511.povray_r"
    "519.lbm_r"
    "521.wrf_r"
    "526.blender_r"
    "527.cam4_r"
    "538.imagick_r"
    "544.nab_r"
    "549.fotonik3d_r"
    "554.roms_r"
)
# Execute the command for each benchmark
for benchmark in "${benchmarks[@]}"; do
    cmd="$warm_up_command $benchmark"
    echo "Executing command: $cmd"
    $cmd
    if [ $? -ne 0 ]; then
        echo "Command failed: $cmd"
    fi
    cmd="$dmc_620_command $benchmark"
    echo "Executing command: $cmd"
    $cmd
    if [ $? -ne 0 ]; then
        echo "Command failed: $cmd"
    fi
    cmd="$cmn_mc_command $benchmark"
    echo "Executing command: $cmd"
    $cmd
    if [ $? -ne 0 ]; then
        echo "Command failed: $cmd"
    fi
    cmd="$watch_point_command $benchmark"
    echo "Executing command: $cmd"
    $cmd
    if [ $? -ne 0 ]; then
        echo "Command failed: $cmd"
    fi
    cmd="$llc_command $benchmark"
    echo "Executing command: $cmd"
    $cmd
    if [ $? -ne 0 ]; then
        echo "Command failed: $cmd"
    fi
done

echo "All commands executed"
