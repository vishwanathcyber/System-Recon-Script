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
