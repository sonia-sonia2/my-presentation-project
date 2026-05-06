# Testing and Validation

## Test Case 1 - Network Connectivity

**Objective:** Confirm Kali and Ubuntu can communicate.

Command from Kali:

```bash
ping -c 4 192.168.10.20
```

Expected result:

```text
0% packet loss
```

## Test Case 2 - OpenPLC Service Running

**Objective:** Confirm Ubuntu is running the simulated PLC service.

Command on Ubuntu:

```bash
sudo ss -lntp | grep ':502'
```

Expected result:

```text
LISTEN ... :502
```

## Test Case 3 - Snort Rule Loads Successfully

**Objective:** Confirm the custom local Snort rule has no syntax errors.

Command on Ubuntu:

```bash
sudo snort -T -c /etc/snort/snort.conf
```

Expected result:

```text
Snort successfully validated the configuration
```

## Test Case 4 - Detection Trigger

**Objective:** Trigger the Snort rule by scanning the Modbus port from Kali.

Command from Kali:

```bash
nmap -Pn -p 502 192.168.10.20
```

Expected Nmap result:

```text
502/tcp open mbap
```

Expected Snort result:

```text
NUCLEAR ATTACK DETECTED
```

## Evidence

Evidence screenshots are stored in:

```text
assets/screenshots/
```

Included screenshots show:

- Kali Linux Nmap scan against port 502.
- Snort console alert detecting the scan.
