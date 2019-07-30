#!/bin/bash

if [ -f ./TITLE.txt ]; then
    TITLE="$(cat ./TITLE.txt)"
else
    TITLE=''
fi

clear
tput civis
cat ./banner.t
echo -en "\n"
printf '\033[00m'
figlet -c -f smmono9 -k -w $COLUMNS "$TITLE"
printf '\033[01;38;5;196m'
python3 -c 'import shutil as shu;COLS, LINES = shu.get_terminal_size();print("⎺" * COLS)'
printf '\033[m'
sleep 10
tput cnorm
cd ~
clear
