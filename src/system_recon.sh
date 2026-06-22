#!/bin/bash

echo "================================"
echo "System Recon Script"
echo "================================"

echo ""
echo "[OS Information]"
uname -a

echo ""
echo "[Hostname]"
hostname

echo ""
echo "[Current User]"
whoami

echo ""
echo "[Network Information]"
ip addr

echo ""
echo "[Memory Information]
free -h

echo ""
echo "[Disk Information]"
df -h

echo ""
echo "[Running Processes]"
ps aux | head -10

echo ""
echo "[System Uptime]
uptime

echo "
echo "Recon Complete!"


