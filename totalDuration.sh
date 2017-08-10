#!/bin/bash
ls > names
input="./names"
totalDuration=0.0
while IFS= read -r var
do
	if [ "$var" == "names" ] || [ "$var" == "totalDuration.sh" ]
		then
			continue
	fi
		time=$(ffprobe -i "$var" -show_entries format=duration -v quiet -of csv="p=0")
		totalDuration=$(echo "$totalDuration + $time" | bc )

done <"$input"

totalDuration=$(echo "$totalDuration / 60.0" | bc )
echo $totalDuration "minutes"
