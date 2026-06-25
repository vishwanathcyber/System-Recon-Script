#!/bin/bash

#
# helpers.sh
#
# Helper Functions
#

check_command() {
    command -v "$1" >/dev/null 2>&1
}

print_separator() {
    echo "========================================"
}
