#!/bin/bash
# Auteur : David Roumanet et Claude3.5

#### Linux Version
echo "#### Linux Version"
lsb_release -d | cut -f2- || cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2

#### Free Memory
echo -e "\n#### Free Memory"
free -h | grep "Mem:" | awk '{print $4}'
