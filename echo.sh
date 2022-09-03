#!/bin/bash

# Color Settings
red_prefix='\033[0;31m'
yellow_prefix='\033[0;33m'
blue_prefix='\033[0;36m'
green_prefix='\033[0;32m'
plain_prefix='\033[0m'

yum install -y wget
url="https://github.com/Ehco1996/ehco/releases/download/v1.1.1/ehco_1.1.1_linux_amd64"
echo -e "${blue_prefix}[Info]${plain_prefix} 开始下载ehco文件..."
wget -O /usr/bin/ehco $url &> /dev/null
chmod +x /usr/bin/ehco

wget 

echo -e "[Unit]
Description=Ehco Tunnel Service
After=network.target

[Service]
Type=simple
Restart=always

WoringDirectory=/usr/bin/ehco
ExecStart=/usr/bin/ehco -c /usr/local/ehco/ehco.json

[Install]
WantedBy=multi-user.target" > /usr/lib/systemd/system/ehco.service
systemctl daemon-reload
systemctl start ehco.service
