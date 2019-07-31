#!/bin/bash


## FUNC TO TOGGLE STARTUP
function __asciistart_toggleboot()
{
if [ "$START_ASCIINEMA" = '1' ]; then
	echo -en """\033c

AscciStart's Title Screen is currently set to \033[m\033[01;32mSTART\033[m on terminal's start.

Would you like to disable the option?

[Y/n]: """
	read
	case $REPLY in
	'Y'|'y'|'')
		sed -i 's/export START_ASCIINEMA=1/export START_ASCIINEMA=0/' "$ASCIISTART"/.asciistartrc
		;;
	'n'|'N')
		;;
	*)
		echo -en """
ERR: Invalid selection - Please try again

[ Hit any key to continue ]

"""
		read
		__asciistart_toggleboot
		;;
	esac
	unset REPLY
elif  [ "$START_ASCIINEMA" = '0' ]; then
	echo -en """\033c

AscciStart's Title Screen is currently set to \033[m\033[01;31mNOT\033[m start on terminal's start.

Would you like to ENABLE the option?

[Y/n]: """
	read
	case $REPLY in
	'Y'|'y'|'')
		sed -i 's/export START_ASCIINEMA=0/export START_ASCIINEMA=1/' "$ASCIISTART"/.asciistartrc
		;;
	'n'|'N')
		;;
	*)
		echo -en """
ERR: Invalid selection - Please try again

[ Hit any key to continue ]

"""
		read
		__asciistart_toggleboot
		;;
	esac
	unset REPLY
fi
}
