#!/bin/bash

KERNEL=$(uname -r)
USER=$(whoami)
HOSTNAME=$(hostnamectl hostname)
OS=$(cat /etc/os-release | grep PRETTY | cut -d '"' -f 2)
ARCH=$(uname -m)

CPU=$(grep -m1 "model name" /proc/cpuinfo | cut -d: -f2)
TMEM=$(grep MemTotal /proc/meminfo | cut -d : -f 2)

ART="

		*----------------*
		 \	/\      /
		  \    /  \    /
		   \  /____\  /	
		   /  \||||/  \	
		  /    \  /    \     
		 /	\/	\      
		*----------------*     

"

echo -e "\nloading sys info for\t\t$USER@$HOSTNAME"
echo -e "${ART}"
echo -e "+-------------------------------------------------+"
echo -e "| OS: ${OS}"
echo -e "| Architecture: ${ARCH}"
echo -e "| Kernel: ${KERNEL}"
echo -e "| Hostname: ${HOSTNAME}"
echo -e "+-------------------------------------------------+"
echo -e "| CPU:${CPU}"
echo -e "| Total Memory:${TMEM}"
echo -e "| Shell:${SHELL}"
echo -e "| Terminal:${TERM}"
echo -e "+-------------------------------------------------+\n"
