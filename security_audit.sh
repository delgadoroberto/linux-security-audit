#!/bin/bash

OUTPUT="reports/audit_report.txt"

mkdir -p reports

{
echo "===== SYSTEM INFORMATION ====="
hostname
uname -a
uptime

echo ""
echo "===== OPEN PORTS ====="
ss -tuln

echo ""
echo "===== USERS WITH UID 0 ====="
awk -F: '$3 == 0 { print $1 }' /etc/passwd

echo ""
echo "===== WORLD WRITABLE FILES ====="
find / -type f -perm -0002 2>/dev/null | head

} | tee "$OUTPUT"
