#!/bin/bash

#
# cpu.sh
#
# CPU Information Collector
#

collect_cpu_info() {

    echo "========================================"
    echo "          CPU INFORMATION"
    echo "========================================"

    echo "CPU Model:"
    lscpu | grep "Model name"

    echo

    echo "Architecture:"
    lscpu | grep "Architecture"

    echo

    echo "CPU Cores:"
    lscpu | grep "^CPU(s):"

    echo

    echo "Threads Per Core:"
    lscpu | grep "Thread(s) per core"

    echo

    echo "CPU Frequency:"
    lscpu | grep "CPU MHz"

    echo

    echo "CPU Cache:"
    lscpu | grep "L3 cache"

    echo

}
