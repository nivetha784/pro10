#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name: Your Name
# Roll Number: Your Roll Number
# =====================================

# Write your commands below

# 1. Allocate a file for swap (1GB)
sudo fallocate -l 1G /swapfile

# 2. Set strict permissions (readable/writable only by root)
sudo chmod 600 /swapfile

# 3. Set up the file as Linux swap area
sudo mkswap /swapfile

# 4. Enable the swap file
sudo swapon /swapfile

# 5. Make swap persistent across reboots
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# 6. Verify swap is active
sudo swapon --show
