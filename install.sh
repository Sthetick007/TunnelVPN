#!/bin/bash
# Hex Tunnel - Install Script
# Developer: Sthetick
# Version: 1.0 beta

clear
echo "Installing Hex Tunnel..."

# Copy menu files
cp menu/menu* /usr/bin/
chmod +x /usr/bin/menu*

# Set SSH banner
cp config/banner.txt /etc/hextunnel-banner
grep -q "hextunnel-banner" /etc/ssh/sshd_config || echo "Banner /etc/hextunnel-banner" >> /etc/ssh/sshd_config
systemctl restart sshd

echo "Done! Type 'menu' to open panel."
