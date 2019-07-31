#!/bin/bash

clear
. $ASCIISTART/load-settings.sh
cat $ASCIISTART/TITLESCREEN/HOWTO;
echo -e "\033[m"
cat $ASCIISTART/TITLESCREEN/Title | figlet -k -c -w $COLUMNS -f smmono9
echo -e "\n\n\n"
sleep 10;
export PROMPT_COMMAND='Bnnerps'
cd ~
clear
echo -en "\n\n\n\n"
