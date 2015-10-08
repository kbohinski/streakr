#!/usr/bin/env bash

echo "Its a new day, time for some commits!"

RAND=$(( ( RANDOM % 5 ) + 1 ))

echo $RAND
cd ~/Desktop/streakr

for (( i=0; i <= $RAND; ++i ))
do
	echo $i
	echo "streakr--`date`  $i" >> gitGraph.txt
	git add gitGraph.txt
	git commit -m "streakr--`date` $i"
	git push origin master
done

echo "Pushed for the day!"
