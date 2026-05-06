# Cybersecurity in Nuclear Systems - ICS/SCADA Attack Detection Lab

A professional academic practical project demonstrating how suspicious network activity against a simulated Industrial Control System (ICS) can be detected using an Intrusion Detection System (IDS).

**Student:** Sonia Muhammad Mansha  
**Program:** Diploma in Cloud Cyber Security - EduQual RQF Level 3  
**Topic:** Cybersecurity in Nuclear Systems  
**Practical Focus:** OpenPLC Modbus service on TCP port 502, Kali Linux Nmap scan, and Snort alert detection.

> This repository is for an authorized classroom lab only. Do not scan or test systems that you do not own or do not have permission to test.

---

## Project Summary

Nuclear and critical infrastructure environments rely on ICS, SCADA, PLCs, monitoring systems, and segmented networks. These systems must be protected from unauthorized access, port scanning, protocol abuse, and other suspicious behavior.

This lab simulates a small nuclear-system-style ICS environment:

- **Ubuntu target machine:** Runs OpenPLC as the simulated PLC service.
- **OpenPLC:** Exposes Modbus TCP service on port `502`.
- **Snort IDS:** Monitors the network interface and raises an alert when TCP traffic targets port `502`.
- **Kali Linux attacker machine:** Runs an Nmap scan against the Ubuntu/OpenPLC target.

The final detection goal is the Snort alert:

```text
NUCLEAR ATTACK DETECTED
```

---

## Repository Structure

```text
sonia-nuclear-ics-cybersecurity-lab/
├── README.md
├── .gitignore
├── CHECKLIST.md
├── docs/
│   ├── 01-project-brief.md
│   ├── 02-lab-architecture.md
│   ├── 03-ubuntu-openplc-setup.md
│   ├── 04-snort-ids-setup.md
│   ├── 05-kali-attack-simulation.md
│   ├── 06-testing-and-validation.md
│   ├── 07-network-segmentation.md
│   ├── 08-viva-questions.md
│   └── demo-video-note.md
├── configs/
│   └── snort/
│       ├── local.rules
│       └── README.md
├── commands/
│   ├── kali-attack-commands.sh
│   ├── ubuntu-openplc-commands.sh
│   ├── ubuntu-snort-commands.sh
│   └── cleanup-commands.sh
├── scripts/
│   └── check-lab-requirements.sh
├── assets/
│   ├── diagrams/
│   │   └── network-topology.mmd
│   ├── screenshots/
│   │   ├── kali-nmap-scan.jpeg
│   │   ├── snort-alert-detection.jpeg
│   │   └── demo-frame.jpg
│   └── demo/
│       └── demo-highlight.mp4
└── presentation/
    ├── sonia-presentation.pptx
    ├── sonia-presentation.pdf
    └── exam-topic.pdf
```

---

## Quick Start

### 1. Prepare the Ubuntu target machine

Install OpenPLC and Snort by following:

- [Ubuntu OpenPLC Setup](docs/03-ubuntu-openplc-setup.md)
- [Snort IDS Setup](docs/04-snort-ids-setup.md)

### 2. Start OpenPLC on Ubuntu

```bash
bash commands/ubuntu-openplc-commands.sh
```

### 3. Start Snort monitoring on Ubuntu

Update the interface name if your lab uses a different interface than `enp0s8`.

```bash
sudo bash commands/ubuntu-snort-commands.sh enp0s8
```

### 4. Run the scan from Kali Linux

Replace `192.168.10.20` with the Ubuntu target IP address.

```bash
bash commands/kali-attack-commands.sh 192.168.10.20
```

### 5. Confirm the detection

Snort should print an alert similar to:

```text
[**] [1:1000001:1] NUCLEAR ATTACK DETECTED [**]
```

---

## Tools Used

| Tool | Role in Lab |
| --- | --- |
| Ubuntu Linux | Target/defender machine |
| Kali Linux | Attacker/test machine |
| OpenPLC | Simulated PLC/industrial control service |
| Modbus TCP | Industrial protocol exposed on port 502 |
| Snort | Intrusion Detection System |
| Nmap | Authorized scanning tool used to trigger detection |
| VirtualBox | Virtual lab environment |

---

## Main Learning Outcomes

By completing this practical project, a student can explain and demonstrate:

1. The role of cybersecurity in nuclear and critical infrastructure environments.
2. Why ICS, SCADA, and PLC systems require monitoring and segmentation.
3. How Modbus TCP traffic can be identified on port `502`.
4. How Snort rules can detect suspicious traffic.
5. How network segmentation reduces risk in critical systems.
6. How standards such as IEC 62443 and IAEA guidance support industrial cybersecurity.

---

## Evidence Included

Screenshots and presentation files are included under `assets/` and `presentation/`.

The original full demo video was larger than GitHub's normal file-size limit, so this repository includes a short compressed highlight clip and a note in [demo-video-note.md](docs/demo-video-note.md).

---

## Ethical Use Notice

This project is only for a private, authorized academic lab. The Nmap command in this repository must be run only against the student's own Ubuntu/OpenPLC VM or another system where explicit permission has been granted.
