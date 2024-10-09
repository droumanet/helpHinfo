#!/bin/bash
# Auteur : D. Roumanet et Claude 3.5

#### Linux Version
echo "#### Linux Version"
lsb_release -d | cut -f2- || cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2

#### Free Memory
echo -e "\n#### Free Memory"
free -h | grep "Mem:" | awk '{print $4}'

#### Disk Space
echo -e "\n#### Disk Space"
df -h / | awk 'NR==2 {printf "Free: %.2f GB / Total: %s\n", $4, $2}'

#### IPv4 Addresses for Each Network Interface
echo -e "\n#### IPv4 Addresses"
ip -4 addr show | awk '/inet / {print $NF, $2}'

#### Processor Type and Number of Cores
echo -e "\n#### Processor Information"
echo "Processor: $(lscpu | grep "Model name" | cut -d ':' -f2 | sed -e 's/^[[:space:]]*//')"
echo "Number of cores: $(nproc)"
