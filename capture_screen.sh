#!/bin/bash

sed -i 's/# export START_ASCIINEMA='1'/export START_ASCIINEMA='1'/' ~/.rectutorial.rc

function __get_new_title(){
	echo -en """

Enter title for this new asciicast video.

: """
	read -r TITLE
	echo "$TITLE" > "$ASCIISTART/TITLESCREEN/TXTSCREEN"
	unset TITLE
}

function __get_projectname(){
	echo -en """

Enter a name for this asciinema project.
: """
	read -r CAST_PROJECT
	mkdir -p ~/Videos/"$CAST_PROJECT"
	echo -en """
Directory created for project at - ~/Videos/"$CAST_PROJECT"

"""
	read
	clear
	export CAST_PROJECT
}


function __get_new_filename(){
	echo -en """

Enter filename to save the cast as.
: """
	read -r CAST_FILENAME
	clear
	export CAST_FILENAME
}

__get_new_title
echo -en """
New title has been set!

[ Hit any key to continue on to naming the project ]

"""
read
__get_projectname
read
__get_new_filename
echo -en """\033c

[Hit any key to start recording]

"""
read
asciinema rec -q ~/Videos/"$CAST_PROJECT"/"$CAST_FILENAME".cast
unset CAST_PROJECT CAST_FILENAME
