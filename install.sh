#!/bin/bash
# Hex Tunnel - Install Script
# Developer: Sthetick
# Version: 1.0 beta

clear
echo "================================================"
echo "        HEX TUNNEL - Installing..."
echo "================================================"

# Install dependencies
apt update -y
apt install -y curl wget openssh-server systemd

# Clone repo
cd /tmp
rm -rf TunnelVPN
git clone https://github.com/Sthetick007/TunnelVPN.git
cd TunnelVPN

# Copy menu files
cp menu/menu* /usr/bin/
chmod +x /usr/bin/menu*

# Set SSH banner
cp config/banner.txt /etc/hextunnel-banner
grep -q "hextunnel-banner" /etc/ssh/sshd_config || echo "Banner /etc/hextunnel-banner" >> /etc/ssh/sshd_config

# Restart SSH
systemctl restart sshd 2>/dev/null || service ssh restart 2>/dev/null

echo "================================================"
echo "  Done! Type 'menu' to open panel."
echo "================================================"
