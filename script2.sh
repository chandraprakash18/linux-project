#!/bin/bash
# Script 2: Detailed Package Inspector
# Author: Chandraprakash (24BAI10787)

pkg="python3"

echo "========== PACKAGE REPORT =========="
echo "Package : $pkg"
echo "------------------------------------"

if dpkg -s "$pkg" &>/dev/null; then
    echo "Status      : Installed"
    
    version=$(dpkg -s "$pkg" | grep Version | awk '{print $2}')
    arch=$(dpkg -s "$pkg" | grep Architecture | awk '{print $2}')
    
    echo "Version     : $version"
    echo "Architecture: $arch"

    if command -v python3 >/dev/null; then
        echo "Path        : $(which python3)"
        echo "Interpreter : $(python3 --version)"
    fi

    echo ""
    echo "Quick Info:"
    echo "Python is an open-source language focused on simplicity."

else
    echo "Status  : Not Installed"
    echo "Command : sudo apt install $pkg"
fi

echo "------------------------------------"
echo "Checked on: $(date)"