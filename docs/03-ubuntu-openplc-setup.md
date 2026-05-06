# Ubuntu OpenPLC Setup

OpenPLC is used as the simulated PLC service in this project.

## 1. Update Ubuntu

```bash
sudo apt update && sudo apt upgrade -y
```

## 2. Install Git

```bash
sudo apt install git -y
```

## 3. Clone OpenPLC

```bash
git clone https://github.com/thiagoralves/OpenPLC_v3.git
```

## 4. Enter the OpenPLC Directory

```bash
cd OpenPLC_v3
```

## 5. Install OpenPLC

```bash
./install.sh linux
```

The installation can take several minutes.

## 6. Start OpenPLC

```bash
cd ~/OpenPLC_v3
sudo ./start_openplc.sh
```

## 7. Confirm Modbus Is Running

Look for a line similar to:

```text
Enabling Modbus on port 502
```

You can also check the port with:

```bash
sudo ss -lntp | grep ':502'
```

## 8. Optional Dashboard Access

OpenPLC usually provides a local dashboard:

```text
http://localhost:8080
```

## Common Fix: Address Already in Use

If OpenPLC is already running, stop it and restart:

```bash
sudo pkill -f openplc
cd ~/OpenPLC_v3
sudo ./start_openplc.sh
```
