# Network Segmentation in Nuclear and ICS Environments

## What Is Network Segmentation?

Network segmentation means dividing a network into separate security zones. In nuclear and industrial environments, this helps prevent a compromise in one area from spreading into critical control systems.

## Example Zones

| Zone | Purpose |
| --- | --- |
| IT Network | Email, reporting, business systems, administrative users |
| DMZ | Controlled exchange area between IT and OT networks |
| OT Network | SCADA, monitoring systems, engineering workstations |
| PLC / Control Layer | PLCs, sensors, actuators, real-time control devices |
| Safety Layer | Safety systems that must remain protected and reliable |

## Why It Matters

If all systems are on one flat network, an attacker who reaches a normal workstation may be able to reach control systems. Segmentation reduces that risk by controlling what traffic is allowed between zones.

## Security Controls

Common controls include:

- Firewalls between IT and OT.
- IDS monitoring at important network points.
- Allow-listing only required protocols.
- Limiting access to PLC ports such as Modbus TCP `502`.
- Logging and reviewing suspicious activity.
- Using separate accounts for administration.

## Connection to This Lab

This lab represents the monitoring idea in a simple form. Snort watches for traffic to an industrial service port and alerts when suspicious access is detected. In a real critical environment, this monitoring would be combined with segmentation, access control, logging, and incident response.
