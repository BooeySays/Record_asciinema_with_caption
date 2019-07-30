export GREYBAR="$(printf '\033[48;5;236m'; printf ' %.s' $(seq 1 $COLUMNS))"
export ASCIISTART=$PWD

function _printcenter(){
	STRING="$(cat $ASCIISTART/config/INSTRUCTION.cfg"
	STRING_LEN="$[$(echo $STRING | wc -L) + 4]"
	CUFF="$[$[$COLUMNS-$STRING_LEN] / 2]"
	echo -en "\r$GREYBAR\r"
	tput cuf "$CUFF"
	echo -en "\033[01;33m\" \033[37m"
	echo -en "$STRING"
	echo -en " \033[01;33m\"\033[m\n"
	unset STRING STRING_LEN CUFF
}
