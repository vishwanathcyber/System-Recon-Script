#!/bin/bash

#
# ssh.sh
#
# SSH Configuration Analyzer
#

analyze_ssh() {

    echo "=============================="
    echo "SSH CONFIGURATION"
    echo "=============================="

    if [ -f /etc/ssh/sshd_config ]; then
        grep "^PermitRootLogin" /etc/ssh/sshd_config
        grep "^PasswordAuthentication" /etc/ssh/sshd_config
    else
        echo "SSH configuration file not found."
    fi

    echo
}
