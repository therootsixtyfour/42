#!/bin/zsh

cat /etc/passwd | awk -F "\:" 'NR>1, NR%2==0 {print $1}' | rev | sort -r | awk -v FT_LINE1=8 -v FT_LINE2=16 '(NR>=FT_LINE1 && NR<=FT_LINE2) {print $0}' ORS=', ' | sed 's/, *$/\./'
