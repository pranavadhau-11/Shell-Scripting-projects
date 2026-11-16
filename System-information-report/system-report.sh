#!/bin/bash

# System Information Report

REPORT="reports/system-report.txt"

echo "================================"
echo "       SYSTEM INFORMATION"
echo "================================"

echo "Date: $(date)" > "$REPORT"

echo "Hostname: $(hostname)" >> "$REPORT"

echo "Operating System:" >> "$REPORT"
cat /etc/os-release | grep PRETTY_NAME >> "$REPORT"

echo "Kernel Version: $(uname -r)" >> "$REPORT"

echo "System Uptime:" >> "$REPORT"
uptime -p >> "$REPORT"

echo "CPU Information:" >> "$REPORT"
lscpu | grep "Model name" >> "$REPORT"

echo "Memory Information:" >> "$REPORT"
free -h >> "$REPORT"

echo "Disk Usage:" >> "$REPORT"
df -h >> "$REPORT"

echo "IP Address:" >> "$REPORT"
hostname -I >> "$REPORT"

echo "================================"
echo "Report generated successfully!"
echo "================================"

cat "$REPORT"
