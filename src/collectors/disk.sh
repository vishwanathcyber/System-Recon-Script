#!/bin/bash

#
# disk.sh
#
# Disk Information Collector
#

collect_disk_info() {

    echo "========================================"
    echo "          DISK INFORMATION"
    echo "========================================"

    echo "Disk Usage:"
    df -h

    echo

    echo "Filesystem Types:"
    df -Th

    echo

    echo "Disk Space Usage:"
    lsblk

    echo

    echo "Mounted Filesystems:"
    mount | head -20

    echo

    echo "Inode Usage:"
    df -i

    echo

}
