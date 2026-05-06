#!/usr/bin/env bash
set -euo pipefail

OPENPLC_DIR="$HOME/OpenPLC_v3"

if [ ! -d "$OPENPLC_DIR" ]; then
  echo "[ERROR] OpenPLC directory not found at $OPENPLC_DIR"
  echo "Install OpenPLC first using docs/03-ubuntu-openplc-setup.md"
  exit 1
fi

echo "[INFO] Starting OpenPLC from $OPENPLC_DIR"
cd "$OPENPLC_DIR"
sudo ./start_openplc.sh
