#!/bin/bash
echo "===== Server Health @ Sun Feb 15 15:54:00 UTC 2026 ====="
echo "[DISK]"
df -h | sed -n "1,5p"
echo
echo "[MEMORY]"
free -m
echo
echo "[LOAD]"
uptime
echo
echo "[PORTS: 22/80/443]"
sudo ss -tulnp | egrep ":22|:80|:443" || true
echo "===================================="

echo "[TOP SPACE IN /var]"
