#!/bin/bash

#
# cpu.sh
#
# Module: CPU Information Collector
# Project: System Recon Script
#

collect_cpu_info() {
    echo "=============================="
    echo "CPU INFORMATION"
    echo "=============================="

    lscpu

    echo
}
