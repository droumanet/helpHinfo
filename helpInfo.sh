#!/bin/bash

#### Linux Version
echo "#### Linux Version"
lsb_release -d | cut -f2- || cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2
