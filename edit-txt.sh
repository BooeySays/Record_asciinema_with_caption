
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


function __edit_titlemain(){
	echo -en """\033c

The current title is set to:

   \033[01;33m\"\033[00m "$(cat "$ASCIISTART/config/Title.main")" \033[01;33m\"\033[00m

Enter bar title or hit enter to leave it unchanged.
"""
	read -p ': ' -r GETTXTBAR
	if [ -n "$GETTXTBAR" ]; then
		echo "$GETTXTBAR" > "$ASCIISTART/config/Title.main"
	fi
	unset GETTXTBAR
}

function __edit_titlesub(){
	echo -en """\033c

The current sub-title is set to:

   \033[01;33m\"\033[00m "$(cat "$ASCIISTART/config/Title.sub")" \033[01;33m\"\033[00m

Enter string for the Sub Title  or hit enter to leave it unchanged.
"""
	read -p ": " -r GETTXTBAR
	if [ -n "$GETTXTBAR" ]; then
		echo "$GETTXTBAR" > "$ASCIISTART/config/Title.sub"
	fi
	unset GETTXTBAR
}

function __edit_instructions(){
	echo -en """\033c

The current instructions text is set to:

   \033[01;33m\"\033[00m "$(cat "$ASCIISTART/config/TXTINSTRUCTIONS")" \033[01;33m\"\033[00m

Enter n ew instructions or hit enter to leave it unchanged.
"""
	read -p ': ' -r GETTXTINSTRUCTIONS
	if [ -n "$GETTXTINSTRUCTIONS" ]; then
		echo "$GETTXTINSTRUCTIONS" > "$ASCIISTART/config/TXTINSTRUCTIONS"
	fi
	unset GETTXTINSTRUCTIONS
}


function __edit_header(){
	echo -en """\033c

The current instructions text is set to:

   \033[01;33m\"\033[00m "$(cat "$ASCIISTART/config/TXTHEADER")" \033[01;33m\"\033[00m

Enter n ew instructions or hit enter to leave it unchanged.
"""
	read -p ': ' -r GETTXTHEADER
	if [ -n "$GETTXTHEADER" ]; then
		echo "$GETTXTHEADER" > "$ASCIISTART/config/TXTHEADER"
	fi
	unset GETTXTHEADER
}



function __edit_all(){
	__edit_fg
	__edit_bg
	__edit_titlemain
	__edit_titlesub
	__edit_header
	__edit_instructions
#	clear
#	echo -e "\n\n\n\n"
	unset __edit_fg __edit_bg __edit_titlemain __edit_titlesub __edit_finstructions __edit_header
}

__edit_all
