#!/usr/bin/env bash
set -euo pipefail

echo "=== Sonia ICS/SCADA Lab Requirement Check ==="

echo "[CHECK] Operating system"
if [ -f /etc/os-release ]; then
  . /etc/os-release
  echo "OS: ${PRETTY_NAME:-Unknown}"
else
  echo "OS: Unknown"
fi

echo "[CHECK] Network interfaces"
ip -br addr || true

echo "[CHECK] Required commands"
for cmd in git ip ping ss; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "OK: $cmd"
  else
    echo "MISSING: $cmd"
  fi
done

echo "[CHECK] Optional lab tools"
for cmd in snort nmap; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "OK: $cmd"
  else
    echo "MISSING: $cmd"
  fi
done

echo "[CHECK] OpenPLC directory"
if [ -d "$HOME/OpenPLC_v3" ]; then
  echo "OK: $HOME/OpenPLC_v3 exists"
else
  echo "MISSING: $HOME/OpenPLC_v3 not found"
fi

echo "=== Check Complete ==="
