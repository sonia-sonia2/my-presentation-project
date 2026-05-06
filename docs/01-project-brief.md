# Project Brief

## Title

Cybersecurity in Nuclear Systems - ICS/SCADA Attack Simulation and Detection

## Student

Sonia Muhammad Mansha

## Academic Context

This practical project supports the EduQual RQF Level 3 topic **Cybersecurity in Nuclear Systems**. The purpose is to demonstrate a safe, simulated example of monitoring industrial control system traffic and detecting suspicious activity.

## Problem Statement

Nuclear facilities rely on digital control systems, PLCs, SCADA networks, sensors, monitoring stations, and safety systems. If an unauthorized user scans or interacts with industrial services, defenders must detect that activity quickly.

## Practical Scenario

A simulated PLC service is started with OpenPLC on an Ubuntu machine. A Kali Linux machine then scans the target's Modbus TCP port using Nmap. Snort runs on the Ubuntu side and watches for TCP traffic targeting port `502`. When the traffic appears, Snort generates the custom alert:

```text
NUCLEAR ATTACK DETECTED
```

## Scope

This repository covers:

- OpenPLC installation and execution.
- Snort installation and local rule configuration.
- Kali Linux connectivity and Nmap scan.
- Detection validation using Snort console output.
- Basic network segmentation explanation for critical systems.

This repository does not cover:

- Real nuclear systems.
- Unauthorized scanning.
- Exploitation of PLC software.
- Malware, persistence, evasion, or destructive activity.

## Expected Outcome

At the end of the practical demo, the student should show:

1. OpenPLC running on port `502`.
2. Kali Linux scanning the Ubuntu target.
3. Nmap identifying the Modbus/OpenPLC service.
4. Snort detecting the suspicious access attempt and printing the custom alert.
