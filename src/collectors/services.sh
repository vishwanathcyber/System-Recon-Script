#!/bin/bash

#
# services.sh
#
# Module: Running Services Collector
#

collect_services_info() {

    echo "=============================="
    echo "RUNNING SERVICES"
    echo "=============================="

    systemctl list-units --type=service --state=running

    echo
}
