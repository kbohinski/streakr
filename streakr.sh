#!/usr/bin/env bash

echo "Its a new day, time for some commits!"

rand = shuf -i 1-5 -n 1

while [ $rand > 0 ]
do
	echo 'date  $rand' >> gitGraph.txt
	git add gitGraph.txt
	git commit -m "streakr--'date'"
	git push origin master
	$rand --
done

echo "Pushed for the day!"
