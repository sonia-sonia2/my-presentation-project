# Kali Attack Simulation

This step must be performed only inside the authorized private lab.

## 1. Find Kali IP Address

On Kali Linux:

```bash
ip addr
```

Example Kali IP:

```text
192.168.10.10
```

## 2. Confirm Connectivity to Ubuntu

Replace the IP with the Ubuntu target IP.

```bash
ping -c 4 192.168.10.20
```

If ping works, the machines can communicate.

## 3. Scan OpenPLC Modbus Port

```bash
nmap -Pn -p 502 192.168.10.20
```

## 4. Expected Nmap Result

A successful discovery should show port `502` as open:

```text
PORT    STATE SERVICE
502/tcp open  mbap
```

## 5. Expected Snort Detection

At the same time, the Ubuntu Snort terminal should show:

```text
NUCLEAR ATTACK DETECTED
```

## What the Nmap Flags Mean

| Flag | Meaning |
| --- | --- |
| `-Pn` | Treat the host as online and skip host discovery |
| `-p 502` | Scan only TCP port 502 |
| target IP | The Ubuntu machine running OpenPLC |

## Why Port 502 Matters

Port `502` is commonly used by Modbus TCP, an industrial communication protocol used in PLC and SCADA environments. Detecting unexpected traffic to this port is important in critical infrastructure monitoring.
