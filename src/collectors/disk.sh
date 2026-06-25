#!/bin/bash

#
# disk.sh
#
# Module: Disk Information Collector
#

collect_disk_info() {

    echo "=============================="
    echo "DISK INFORMATION"
    echo "=============================="

    df -h

    echo
}
