function Bnnerps(){
	TITLECLR="$(cat  $ASCIISTART/config/COLOR-TITLE-bg.cfg)"
	FONTCLR="$(cat  $ASCIISTART/config/COLOR-TITLE-fg.cfg)"
	tput sc
	tput cup 0 0
	printf "\033[48;5;"$TITLECLR"m %.s" $(seq 1 $COLUMNS); echo -en "\r\033[01;38;5;"$FONTCLR"m$(cat "$ASCIISTART"/config/TITLE-BAR.cfg | figlet -f term -l -w $COLUMNS)\033[m\n"
	tput cup 1 0
	echo -en "$GREYBAR"; echo -en "\r\033[01;38;5;255m$(cat  $ASCIISTART/config/HEADER.cfg | figlet -f term -l -w $COLUMNS)\n"
	tput cup 2 0
	_printcenter
	tput cup 3 0
	echo -en "$GREYBAR\033[m\n"
	tput rc
}
