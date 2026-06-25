#!/bin/bash

#
# firewall.sh
#
# Firewall Analyzer
#

analyze_firewall() {

    echo "=============================="
    echo "FIREWALL ANALYSIS"
    echo "=============================="

    if command -v ufw >/dev/null 2>&1; then
        ufw status
    else
        echo "UFW is not installed."
    fi

    echo
}
