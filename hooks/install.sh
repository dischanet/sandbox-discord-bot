#!/bin/bash

cd /home/centos/repos/sandbox-discord-bot

ZONE=$(curl 169.254.169.254/latest/meta-data/placement/availability-zone)
REGION=$(echo ${ZONE/%?/})
PARAMETER_NAME=_DISCORD_BOT_SECRET

echo "DISCORD_BOT_TOKEN=$(/home/centos/.pyenv/shims/aws --region ${REGION} ssm get-parameters --name ${PARAMETER_NAME} --query "Parameters[0].Value" --output text)" > environment

sudo cp ./hooks/sandbox-discord-bot.service /etc/systemd/system/sandbox-discord-bot.service
