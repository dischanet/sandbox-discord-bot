#!/bin/bash

cd /home/centos/repos/sandbag-discord-bot

sudo ./hooks/set-environment.sh
sudo ln -s ./hooks/sandbag-discord-bot.service /etc/systemd/system/sandbag-discord-bot.service
sudo /usr/bin/systemctl enable sandbag-discord-bot