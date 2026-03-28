#!/bin/bash

KERNEL=$(uname -r)
HOSTNAME=$(hostnamectl hostname)
OS=$(cat /etc/os-release | grep PRETTY | cut -d '"' -f 2)
ARCH=$(uname -m)

echo -e "\nSys Info"
echo -e "+----------------------+"
echo -e "OS: ${OS}"
echo -e "Architecture: ${ARCH}"
echo -e "Kernel: ${KERNEL}"
echo -e "Hostname: ${HOSTNAME}"
echo -e "+----------------------+\n"
