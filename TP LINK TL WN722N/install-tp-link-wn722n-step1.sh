#!/bin/bash

echo "Starting TP-Link WN722N driver installation (Step 1)..."

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y build-essential dkms bc libelf-dev linux-headers-$(uname -r) git

echo "First part of the driver is installed. Please reboot to continue."

# Prompt user to reboot
echo "Reboot now and run 'install-tp-link-wn722n-step2.sh' after the system restarts."
