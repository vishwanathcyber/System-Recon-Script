#!/bin/bash

#
# memory.sh
#
# Memory Information Collector
#

collect_memory_info() {

    echo "========================================"
    echo "         MEMORY INFORMATION"
    echo "========================================"

    echo "Memory Summary:"
    free -h

    echo

    echo "Detailed Memory Information:"
    cat /proc/meminfo | head -10

    echo

    echo "Swap Usage:"
    swapon --show

    echo

    echo "Memory Usage Percentage:"
    free | awk '/Mem:/ {printf("%.2f%% Used\n", $3/$2 * 100.0)}'

    echo

}
