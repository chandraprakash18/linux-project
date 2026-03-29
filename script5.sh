#!/bin/bash
# Script 5: Open Source Pledge Generator
# Author: Chandraprakash (24BAI10787)

clear
echo "===== Open Source Pledge Creator ====="
echo ""

read -p "Enter your name: " uname
read -p "Tool you use daily: " tool
read -p "Meaning of freedom: " freedom
read -p "What will you create? " create

uname=${uname:-"Chandraprakash"}
today=$(date +"%d-%m-%Y")

file_name="pledge_${uname// /_}.txt"

cat <<EOF > $file_name
----------------------------------------
 OPEN SOURCE PLEDGE - $uname
----------------------------------------
Date: $today

I, $uname, support open-source principles.

Using $tool daily shows how collaboration works.

Freedom means: $freedom

I promise to build: $create
and share it with everyone.

Signed,
$uname
($today)
----------------------------------------
EOF

echo ""
echo "File saved as: $file_name"
echo ""
cat $file_name