#!/bin/bash

#while sleep 1; do
#	tput sc
#	tput cup 0 0
#	printf "\033[41m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;37m$(cat STEP.txt | figlet -f term -c -w $COLUMNS)\033[m\n"
#	figlet -c -w $COLUMNS -f term "$STEPT"
#	date
#	tput rc
#done
export GREYBAR="$(printf '\033[48;5;236m'; printf ' %.s' $(seq 1 $COLUMNS))"

function _printcenter(){
	STRING="$(cat "$ASCIISTART"/config/TXTINSTRUCTIONS)"
	STRING_LEN="$[$(echo $STRING | wc -L) + 4]"
	CUFF="$[$[$COLUMNS-$STRING_LEN] / 2]"
	echo -en "\r$GREYBAR\r"; tput cuf "$CUFF"; echo -en "\033[01;33m\" \033[37m"; echo -en "$STRING"; echo -en " \033[01;33m\"\033[m\n"
	unset STRING STRING_LEN CUFF
}

function Bnnerps(){
	TITLECLR=$(cat "$ASCIISTART"/config/COLORBG)
	FONTCLR=$(cat "$ASCIISTART"/config/COLORFG)
	tput sc
	tput cup 0 0
	printf "\033[48;5;"$TITLECLR"m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;38;5;"$FONTCLR"m$(cat "$ASCIISTART"/config/TXTBAR | figlet -f term -l -w $COLUMNS)\033[m\n"
	tput cup 1 0
	echo -en "$GREYBAR"; echo -en "\r\033[01;38;5;255m$(cat $ASCIISTART/config/TXTHEADER | figlet -f term -l -w $COLUMNS)\n"
	tput cup 2 0
	_printcenter
	tput cup 3 0
	echo -en "$GREYBAR\033[m\n"
	tput rc
}
