#!/bin/bash

cd /home/centos/repos/sandbox-discord-bot

sudo ./hooks/set-environment.sh
sudo ln -s ./hooks/sandbox-discord-bot.service /etc/systemd/system/sandbox-discord-bot.service
sudo /usr/bin/systemctl enable sandbox-discord-bot