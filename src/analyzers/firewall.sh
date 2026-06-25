#!/bin/bash

#
# firewall.sh
#
# Firewall Security Analyzer
#

analyze_firewall() {

    echo "========================================"
    echo "       FIREWALL ANALYSIS"
    echo "========================================"

    if command -v ufw >/dev/null 2>&1; then

        echo "Firewall Status:"
        sudo ufw status verbose

        echo

        echo "Default Policies:"
        sudo ufw status verbose | grep "Default"

    else

        echo "UFW Firewall is not installed."

    fi

    echo

}
