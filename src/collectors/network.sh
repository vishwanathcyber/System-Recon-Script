#!/bin/bash

#
# network.sh
#
# Network Information Collector
#

collect_network_info() {

    echo "========================================"
    echo "        NETWORK INFORMATION"
    echo "========================================"

    echo "Hostname:"
    hostname

    echo

    echo "IP Addresses:"
    ip addr show

    echo

    echo "Default Gateway:"
    ip route | grep default

    echo

    echo "DNS Servers:"
    cat /etc/resolv.conf

    echo

    echo "Network Interfaces:"
    ip link show

    echo

    echo "Listening Ports:"
    ss -tuln

    echo

    echo "Routing Table:"
    ip route

    echo

}
