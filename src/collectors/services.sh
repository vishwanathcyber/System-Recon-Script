#!/bin/bash

#
# services.sh
#
# Services and Processes Collector
#

collect_services_info() {

    echo "========================================"
    echo "      SERVICES INFORMATION"
    echo "========================================"

    echo "Running Services:"
    systemctl list-units --type=service --state=running

    echo

    echo "Failed Services:"
    systemctl --failed

    echo

    echo "Enabled Services:"
    systemctl list-unit-files --type=service --state=enabled

    echo

    echo "Top 10 CPU Consuming Processes:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -11

    echo

    echo "Top 10 Memory Consuming Processes:"
    ps -eo pid,comm,%mem --sort=-%mem | head -11

    echo

}
