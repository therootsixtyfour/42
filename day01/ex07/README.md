# Day 01

## Exercise 7

### Answer
``` bash
#!/bin/zsh

cat /etc/passwd | awk -F "\:" 'NR>1, NR%2==0 {print $1}' | rev | sort -r | awk -v FT_LINE1=8 -v FT_LINE2=16 '(NR>=FT_LINE1 && NR<=FT_LINE2) {print $0}' ORS=', ' | sed 's/, *$/\./'
```


---
### Process
> awk ...ward

I mentioned in the last exercise that I should probably take more time to learn ```awk```. Well, here we are. It is a little finicky with the syntax and getting the statements just right, but I got there. 

My only concern with this exercise is that when I ```cat``` that passwd file, there are a dozen or so disclaimer lines about the data presented. So there is a built in risk that FT_LINE1 and FT_LINE2 could capture those. But the instructions didn't tell me to cut it out, so in it stays. 

1. ```cat``` the desired file
2. ```awk``` separate on the colon (:), for record number (NR) higher than 1, and if it is even, give back that first column of logins. This obviously removes the comments column.
3. Reverse the text of each of those logins with ```rev```.
4. ```sort``` them in reverse alphabetical order
5. back to ```awk``` where we only want the range of records from FT_LINE1 to FT_LINE2 (inclusive), and return a list separated by comma and space (, ).
6. Finally to ```sed``` who takes the last comma-space separator and turns it into a period. 


