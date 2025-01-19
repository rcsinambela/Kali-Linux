#!/bin/bash

echo "Continuing TP-Link WN722N driver installation (Step 2)..."

git clone https://github.com/gglluukk/rtl8188eus.git

cd rtl8188eus

sudo make && sudo make install 

echo 'blacklist r8188eu' | sudo tee -a '/etc/modprobe.d/realtek.conf'

echo 'blacklist rtl8xxxu' | sudo tee -a '/etc/modprobe.d/realtek.conf'

rmmod r8188eu rtl8xxxu 8188eu

modprobe 8188eu

echo "TP-Link WN722N driver installation completed!"
