#!/bin/bash

STEPT="$(cat ./STEP.txt)"
#STRING_LEN="$(echo "$STEP_TITLE" | wc -L)"

ban="$(figlet -c -w $COLUMNS -f term "$STEPT")"

while sleep 1; do
	tput sc
	tput cup 0 0
	printf "\033[41m"
	printf ' %.s' $(seq 1 $COLUMNS)
	echo -e "\rban"
	printf '\033[m'
#	date
	tput rc
done
