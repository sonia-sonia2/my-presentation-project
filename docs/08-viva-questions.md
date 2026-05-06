# Viva and Interview Preparation Questions

## Basic Concepts

### What is cybersecurity in nuclear systems?

It is the protection of digital systems used to monitor, control, and support nuclear facilities. This includes ICS, SCADA, PLCs, sensors, networks, and data systems.

### What is ICS?

ICS means Industrial Control System. It is a group of systems used to control industrial processes, such as power generation, water treatment, and manufacturing.

### What is SCADA?

SCADA means Supervisory Control and Data Acquisition. It is used to monitor and control industrial processes across a plant or facility.

### What is a PLC?

A PLC is a Programmable Logic Controller. It is a rugged computer used to control industrial equipment and physical processes.

### What is Modbus?

Modbus is an industrial communication protocol. Modbus TCP commonly uses port `502`.

## Practical Demo Questions

### What did OpenPLC do in the project?

OpenPLC acted as the simulated PLC service. It represented an industrial control system component in the lab.

### What did Snort do in the project?

Snort monitored network traffic and generated an alert when traffic targeted Modbus TCP port `502`.

### What did Nmap do in the project?

Nmap scanned the Ubuntu target to check whether port `502` was open. This scan triggered the Snort detection rule.

### Why was port 502 selected?

Port `502` is used by Modbus TCP, which is common in industrial control environments.

### What was the final detection result?

The final detection result was the Snort alert message:

```text
NUCLEAR ATTACK DETECTED
```

## Security Questions

### Why are ICS and SCADA systems vulnerable?

Many ICS and SCADA systems were designed for reliability and availability, not modern internet-style threats. Some may run older protocols, legacy devices, or weak network separation.

### How does network segmentation improve security?

Segmentation separates IT, DMZ, OT, and control networks. It limits movement between zones and reduces the chance that a normal IT compromise can directly affect PLCs or safety systems.

### What is IEC 62443?

IEC 62443 is a set of standards for industrial automation and control system cybersecurity.

### What is the role of IAEA guidance?

IAEA guidance supports nuclear security, safety culture, and protection of nuclear facilities, including cyber-related considerations for nuclear environments.

## Strong Closing Answer

This project shows that even a simple scan against an industrial service can be detected when monitoring is configured properly. In real critical infrastructure, detection should be combined with segmentation, access control, secure configuration, logging, and continuous monitoring.
