#!/bin/bash

#
# users.sh
#
# User Information Collector
#

collect_users_info() {

    echo "========================================"
    echo "          USER INFORMATION"
    echo "========================================"

    echo "Current User:"
    whoami

    echo

    echo "Logged-in Users:"
    who

    echo

    echo "Last Login Information:"
    last | head -10

    echo

    echo "User Accounts:"
    cut -d: -f1 /etc/passwd

    echo

    echo "Groups:"
    getent group

    echo

    echo "Users with sudo privileges:"
    getent group sudo

    echo

}
