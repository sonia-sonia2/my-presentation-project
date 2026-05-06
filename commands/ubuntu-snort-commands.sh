#!/usr/bin/env bash
set -euo pipefail

INTERFACE="${1:-enp0s8}"
RULE_FILE="/etc/snort/rules/local.rules"

if ! command -v snort >/dev/null 2>&1; then
  echo "[ERROR] Snort is not installed. Run: sudo apt install snort -y"
  exit 1
fi

if [ ! -f "$RULE_FILE" ]; then
  echo "[ERROR] Snort local rule file not found: $RULE_FILE"
  echo "Create it using docs/04-snort-ids-setup.md"
  exit 1
fi

echo "[INFO] Validating Snort configuration..."
sudo snort -T -c /etc/snort/snort.conf

echo "[INFO] Starting Snort on interface: $INTERFACE"
echo "[INFO] Waiting for traffic to port 502..."
sudo snort -A console -q -c /etc/snort/snort.conf -i "$INTERFACE"
