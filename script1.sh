#!/bin/bash
# Script 1: System Identity Overview
# Author: Chandraprakash (24BAI10787)

name="Chandraprakash"
reg_no="24BAI10787"
fav_tool="Python"

# Collect system details
kernel_version=$(uname -r)
architecture=$(uname -m)
current_user=$(whoami)
home_path=$HOME
shell_used=$SHELL
uptime_info=$(uptime -p)
today=$(date)

# OS detection
if [[ -f /etc/os-release ]]; then
    os_name=$(grep "PRETTY_NAME" /etc/os-release | cut -d '"' -f2)
else
    os_name="Not Available"
fi

echo "-----------------------------------------"
echo " Open Source Report - $name ($reg_no)"
echo "-----------------------------------------"
echo "OS        : $os_name"
echo "Kernel    : $kernel_version"
echo "Arch      : $architecture"
echo ""
echo "User      : $current_user"
echo "Home Dir  : $home_path"
echo "Shell     : $shell_used"
echo ""
echo "Uptime    : $uptime_info"
echo "Date      : $today"
echo ""
echo "License   : GPL"
echo "Tool Used : $fav_tool"
echo "-----------------------------------------"