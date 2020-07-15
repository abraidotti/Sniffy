# Sniffy

A packet sniffing tool

Monitor packets and search the text for login credentials.

Based on Zaid Sabih's tutorial in <https://www.udemy.com/course/learn-python-and-ethical-hacking-from-scratch>

## Table of Contents

[Requirements](##Requirements)  
[Installation](##Installation)  
[Configuration](##Configuration)  
[Execution](##Execution)  
[Contribution](##Contribution)  

## Requirements

- Python 3

- Pip and the `scapy` library

- a target device

## Installation

```bash
git clone https://github.com/abraidotti/Sniffy
cd Sniffy
```

## Configuration

None

## Execution

Specify a network interface to monitor.

```bash
python3 scanny.py --interface eth0
```

You can find that interface in a couple ways:

### Windows

```bash
netsh interface ip show address
```

### Linux

```bash
ip link show
```

Check `notes.sh` for more options.

## Contribution

If you'd like to contribute, file a pull request or github issue to discuss.

TODO:

- verify Windows functionality
