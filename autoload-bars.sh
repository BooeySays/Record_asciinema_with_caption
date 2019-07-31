#!/bin/bash

function __add_anotherstep(){
	echo -en """
Do you want to add another step?

[Y/n]: """
	read
	case $REPLY in
	'y'|'Y'|'')
		# create another step
		;;
	'n'|'N')
		# end
		;;
	*)
		echo -en "\nErr: invalid selection - please try again.\n\n[Hit any key to continue]"
		__add_anotherstep
		;;
	esac
}

