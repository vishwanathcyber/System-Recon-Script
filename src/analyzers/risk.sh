#!/bin/bash

#
# risk.sh
#
# Risk Assessment Engine
#

calculate_risk() {

    echo "========================================"
    echo "        RISK ASSESSMENT"
    echo "========================================"

    SCORE=0

    if command -v ufw >/dev/null 2>&1; then
        SCORE=$((SCORE+0))
    else
        SCORE=$((SCORE+20))
    fi

    if [ -f /etc/ssh/sshd_config ]; then
        SCORE=$((SCORE+0))
    else
        SCORE=$((SCORE+10))
    fi

    echo "Risk Score: $SCORE / 100"

    if [ "$SCORE" -lt 20 ]; then
        echo "Overall Risk: LOW"
    elif [ "$SCORE" -lt 50 ]; then
        echo "Overall Risk: MEDIUM"
    else
        echo "Overall Risk: HIGH"
    fi

    echo

}
