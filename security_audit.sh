#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
hostname
uname -a
uptime

echo ""
echo "===== OPEN PORTS ====="

ss -tuln
