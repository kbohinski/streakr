#!/usr/bin/env bash

if [[ -d /etc/cron.daily  ]];
then
	echo "Setting up for a daily cron job..."
	sudo cp streakr.sh /etc/cron.daily
	sudo chmod 777 streakr.sh
	echo "Done!"
else
	echo "Err: Please install cron."
fi
