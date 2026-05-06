# Snort IDS Setup

Snort is used to detect suspicious traffic targeting the OpenPLC Modbus service.

## 1. Install Snort

```bash
sudo apt update
sudo apt install snort -y
```

During installation, Snort may ask for the network range. For a simple host-only lab, an example value is:

```text
192.168.10.0/24
```

Use the range that matches your own virtual lab network.

## 2. Identify the Ubuntu Network Interface

```bash
ip addr
```

In this project, the monitored interface is usually:

```text
enp0s8
```

Your machine may show a different name, such as `eth0`, `ens33`, or `enp0s3`.

## 3. Add the Custom Rule

Open the local Snort rules file:

```bash
sudo nano /etc/snort/rules/local.rules
```

Add this rule:

```snort
alert tcp any any -> any 502 (msg:"NUCLEAR ATTACK DETECTED"; sid:1000001; rev:1;)
```

A copy of this rule is also included in:

```text
configs/snort/local.rules
```

## 4. Verify the Snort Configuration

```bash
sudo snort -T -c /etc/snort/snort.conf
```

If the test completes successfully, continue to the monitoring step.

## 5. Run Snort in Console Alert Mode

Replace `enp0s8` if your interface name is different.

```bash
sudo snort -A console -q -c /etc/snort/snort.conf -i enp0s8
```

## 6. Expected Alert

When Kali scans port `502`, Snort should print an alert similar to:

```text
[**] [1:1000001:1] NUCLEAR ATTACK DETECTED [**]
```
