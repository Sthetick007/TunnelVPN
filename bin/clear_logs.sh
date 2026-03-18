#!/bin/bash

# Remove compressed log files
sudo rm -rf /var/log/*.gz

# Remove rotated logs
sudo rm -rf /var/log/*.1

# Truncate large log files that are still in use
sudo truncate -s 0 /var/log/*

# Remove regular log files
sudo rm -rf /var/log/*.log

# Remove rotated log files
sudo rm -rf /var/log/*.log.*

# Truncate all remaining log files
sudo find /var/log/ -type f -exec truncate -s 0 {} +

# Additional cleanup commands
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*
sudo journalctl --vacuum-time=1d
sudo apt-get clean
sudo rm -rf /var/cache/apt/archives/*

echo "Log files cleanup completed."
