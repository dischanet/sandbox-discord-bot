#!/bin/bash

cd /home/ec2-user/repos/sandbox-discord-bot

REGION=$(curl -s 169.254.169.254/latest/meta-data/local-hostname | cut -d '.' -f2)
PARAMETER_NAME=SANDBOX_DISCORD_BOT_SECRET
echo "DISCORD_BOT_TOKEN=$(/usr/bin/aws --region ${REGION} ssm get-parameter --name ${PARAMETER_NAME} --query "Parameter.Value" --output text)" > environment

sudo cp ./hooks/sandbox-discord-bot.service /etc/systemd/system/sandbox-discord-bot.service
