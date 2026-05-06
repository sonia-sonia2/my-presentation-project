# Snort Configuration

This folder contains the custom Snort rule used in the project.

## Rule File

```text
configs/snort/local.rules
```

## Install the Rule on Ubuntu

```bash
sudo cp configs/snort/local.rules /etc/snort/rules/local.rules
```

Or manually copy the rule into:

```text
/etc/snort/rules/local.rules
```

## Validate Snort Configuration

```bash
sudo snort -T -c /etc/snort/snort.conf
```

## Run Snort

```bash
sudo snort -A console -q -c /etc/snort/snort.conf -i enp0s8
```

Replace `enp0s8` with the correct interface name for your Ubuntu VM.
