#!/bin/bash

#
# System Recon Script
# Main Entry Point
#

# =============================
# Load Utility Modules
# =============================

source utils/logger.sh
source utils/helpers.sh
source utils/colors.sh

# =============================
# Load Collectors
# =============================

source collectors/cpu.sh
source collectors/memory.sh
source collectors/disk.sh
source collectors/network.sh
source collectors/user.sh
source collectors/services.sh

# =============================
# Load Analyzers
# =============================

source analyzers/firewall.sh
source analyzers/ssh.sh
source analyzers/risk.sh

# =============================
# Start Scan
# =============================

log_info "Starting System Recon Script..."

print_separator

collect_cpu_info

collect_memory_info

collect_disk_info

collect_network_info

collect_users_info

collect_services_info

print_separator

analyze_firewall

analyze_ssh

calculate_risk

print_separator

log_success "Scan Completed Successfully."


