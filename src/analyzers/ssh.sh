#!/bin/bash

#
# ssh.sh
#
# SSH Security Analyzer
#

analyze_ssh() {

    echo "========================================"
    echo "       SSH ANALYSIS"
    echo "========================================"

    if [ -f /etc/ssh/sshd_config ]; then

        echo "Root Login Configuration:"
        grep "^PermitRootLogin" /etc/ssh/sshd_config

        echo

        echo "Password Authentication:"
        grep "^PasswordAuthentication" /etc/ssh/sshd_config

        echo

        echo "Public Key Authentication:"
        grep "^PubkeyAuthentication" /etc/ssh/sshd_config

    else

        echo "SSH Configuration not found."

    fi

    echo

}
