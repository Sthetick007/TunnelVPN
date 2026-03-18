#!/bin/bash
# Hex Tunnel - Install Script
# Developer: Sthetick
# Version: 1.0 beta

clear
echo "================================================"
echo "        HEX TUNNEL - Installing..."
echo "================================================"

# Dependencies
apt update -y
apt install -y curl wget git openssh-server ruby vnstat net-tools uuid-runtime

# Install lolcat
gem install lolcat -q

# Clone repo
cd /tmp
rm -rf TunnelVPN
git clone https://github.com/Sthetick007/TunnelVPN.git
cd TunnelVPN

# Copy all binaries
cp bin/* /usr/bin/
cp bin/ws-nontls /usr/local/bin/ 2>/dev/null
cp bin/ws-stunnel /usr/local/bin/ 2>/dev/null
cp bin/xray /usr/local/bin/ 2>/dev/null
chmod +x /usr/bin/menu* /usr/bin/addssh /usr/bin/add-* /usr/bin/del-* /usr/bin/renew* /usr/bin/cek /usr/bin/running

# Set IP/ISP/City info
curl -s ifconfig.me > /root/.myip
curl -s "http://ipinfo.io/org" > /root/.myisp
curl -s "http://ipinfo.io/city" > /root/.mycity

# SSH Banner
cp config/banner.txt /etc/hextunnel-banner
grep -q "hextunnel-banner" /etc/ssh/sshd_config || echo "Banner /etc/hextunnel-banner" >> /etc/ssh/sshd_config
systemctl restart sshd 2>/dev/null || service ssh restart 2>/dev/null

echo "================================================"
echo "  Done! Type 'menu' to open panel."
echo "================================================"
