#!/bin/bash

echo -n "Enter series name: ";
read name;

season=1;
episode=1;

mkdir -p ./"$name"/s1/;

while IFS='' read -r line || [[ -n "$line" ]]; do
	if [[ "$line" == "" ]]; then
		season=$((season+1))
		mkdir -p ./"$name"/s"$season"/;
		episode=1
		continue;
	fi

	eps_number=$(echo "$line" | grep -o -e '_[0-9]\+\.mp4' | grep -o -e '[0-9]\+.' | grep -o -e '[0-9]\+')

	filename=$(printf "$name-s%02de%02d_%d.mp4\n" "$season" "$episode" "$eps_number")
	wget --no-verbose -a log.txt -b -O "./"$name"/s"$season"/$filename" $line

	episode=$((episode+1))
done < "$1"

wait
