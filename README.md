# HexTunnel VPN Panel

A lightweight SSH/VPN panel for Ubuntu/Debian servers.

## Developer
**Sthetick** ([@Sthetick007](https://github.com/Sthetick007))

## Requirements
- Ubuntu 20.04 / 22.04 / Debian 10 / 11
- Root access
- Fresh VPS recommended
- Minimum 1GB RAM

## One Line Install
```bash
bash <(curl -Ls https://raw.githubusercontent.com/Sthetick007/TunnelVPN/main/install.sh)
```

## After Install
Type `menu` to open the panel.

## Supported Protocols
- OpenSSH
- Dropbear
- WebSocket SSH (TLS & Non-TLS)
- Vmess (Xray)
- Trojan (Xray)
- Vless (Xray)
- SOCKS5
- BadVPN UDP

## Ports
| Service | Port |
|---------|------|
| OpenSSH | 22, 53, 3303 |
| Dropbear | 69, 109 |
| WebSocket TLS | 443 |
| WebSocket Non-TLS | 80, 8080, 2082 |
| Xray | 443 |
| BadVPN UDP | 7100, 7200, 7300 |

## Features
- SSH Account Management
- Vmess Account Management
- Trojan Account Management
- System Monitoring
- Service Status Dashboard
- Auto SSL Certificate
- Fail2Ban Protection

## Version
1.0 beta
