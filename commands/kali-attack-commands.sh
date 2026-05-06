#!/usr/bin/env bash
set -euo pipefail

TARGET_IP="${1:-}"

if [ -z "$TARGET_IP" ]; then
  echo "Usage: bash commands/kali-attack-commands.sh <ubuntu-target-ip>"
  echo "Example: bash commands/kali-attack-commands.sh 192.168.10.20"
  exit 1
fi

echo "[INFO] Authorized lab scan only. Target: $TARGET_IP"
echo "[STEP] Checking connectivity..."
ping -c 4 "$TARGET_IP"

echo "[STEP] Scanning Modbus/OpenPLC port 502..."
nmap -Pn -p 502 "$TARGET_IP"

echo "[DONE] Now check the Ubuntu Snort terminal for the alert."
