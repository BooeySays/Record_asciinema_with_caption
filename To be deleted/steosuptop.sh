#!/bin/bash

STEPT="$(cat ./STEP.txt)"
#STRING_LEN="$(echo "$STEP_TITLE" | wc -L)"

#while sleep 1; do
#	tput sc
#	tput cup 0 0
#	printf "\033[41m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;37m$(cat STEP.txt | figlet -f term -c -w $COLUMNS)\033[m\n"
#	figlet -c -w $COLUMNS -f term "$STEPT"
#	date
#	tput rc
#done
export STEPT="$(cat ~/asciinema_start/STEP.txt)"
export STEPTa="$(cat ~/asciinema_start/STEP.head)"
export STEPTb="$(cat ~/asciinema_start/STEP.det)"
export GREYBAR="$(printf '\033[48;5;236m'; printf ' %.s' $(seq 1 $COLUMNS); printf '\033[m')"

function Bnnerps(){
	tput sc
	tput cup 0 0
	printf "\033[48;5;"$((RANDOM%215 +16))"m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;38;5;232m$(echo $STEPT | figlet -f term -l -w $COLUMNS)\033[m\n"
	tput cup 1 0
	printf "\033[48;5;236m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;38;5;255m$(echo $STEPTa | figlet -f term -l -w $COLUMNS)\033[m\n"
	tput cup 2 0
	echo -e "$GREYBAR"; echo -en "\r\033[01;38;5;255m$(echo $STEPTb | figlet -f term -c -w $COLUMNS)\033[m\n"
#	printf "\033[48;5;236m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;38;5;255m$(echo $STEPTb | figlet -f term -c -w $COLUMNS)\033[m\n"
	tput cup 3 0
	echo -e "$GREYBAR\n"
#	printf "\033[48;5;236m %.s" $(seq 1 $COLUMNS);
#; echo -en "\r\033[01;38;5;255m$(echo $STEPTb | figlet -f term -c -w $COLUMNS)\033[m\n"
#	figlet -c -w $COLUMNS -f term "$STEPT"
#	date
	tput rc
}



if [ ! $ps1 ]; then
	export ps1=$PS1
	export PS1="\n$ps1"$(Bnnerps)""
else
	export PS1="\n$ps1"$(Bnnerps)""
fi

cd ~
clear
echo -en "\n\n\n"
