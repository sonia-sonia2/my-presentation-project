#!/usr/bin/env bash
set -euo pipefail

echo "[INFO] Stopping OpenPLC processes if running..."
sudo pkill -f openplc || true

echo "[INFO] If Snort is running in another terminal, stop it with Ctrl + C."
echo "[DONE] Cleanup commands completed."
