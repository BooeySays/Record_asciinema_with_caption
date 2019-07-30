function __edit_fg(){
	read -p 'Enter FG color [W]hite / [B]lack: ' -r GETCOLORFG
	if [ -n "$GETCOLORFG" ]; then
		case $GETCOLORFG in
		'b'|'B')
			echo '233' > "$ASCIISTART/config/COLORFG"
			;;
		'w'|'W')
			echo '255' > "$ASCIISTART/config/COLORFG"
			;;
		'')
			;;
		*)
			echo -en "ERR: Try again"
			read
			;;
		esac
	fi
	unset GETCOLORFG
}

function __edit_bg(){
	read -p 'Enter BG color: ' -r GETCOLORBG
	if [ -n "$GETCOLORBG" ]; then
		echo "$GETCOLORBG" > "$ASCIISTART/config/COLORBG"
	fi
	unset GETCOLORBG
}


function __edit_txtbar(){
	read -p 'Enter bar title: ' -r GETTXTBAR
	if [ -n "$GETTXTBAR" ]; then
		echo "$GETTXTBAR" > "$ASCIISTART/config/TXTBAR"
	fi
	unset GETTXTBAR
}

function __edit_instructions(){
	read -p 'Enter instructions: ' -r GETTXTINSTRUCTIONS
	if [ -n "$GETTXTINSTRUCTIONS" ]; then
		echo "$GETTXTINSTRUCTIONS" > "$ASCIISTART/config/TXTINSTRUCTIONS"
	fi
	unset GETTXTINSTRUCTIONS
}


function __edit_header(){
	read -p 'Enter header title: ' -r GETTXTHEADER
	if [ -n "$GETTXTHEADER" ]; then
		echo "$GETTXTHEADER" > "$ASCIISTART/config/TXTHEADER"
	fi
	unset GETTXTHEADER
}



function __edit_all(){
	__edit_fg
	__edit_bg
	__edit_txtbar
	__edit_header
	__edit_instructions
#	clear
#	echo -e "\n\n\n\n"
	unset __edit_fg __edit_bg __edit_txtbar __edit_finstructions __edit_header
}

__edit_all
