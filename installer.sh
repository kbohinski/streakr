#!/usr/bin/env bash

CronDaily = /etc/cron.daily

if [[ -d ${CronDaily}  ]];
then
	echo "Setting up for a daily cron job..."
	sudo cp streakr.sh ${CronDaily}
	sudo chmod 777 streakr.sh
	echo "Done!"
else
	echo "Err: Please install cron."
fi
