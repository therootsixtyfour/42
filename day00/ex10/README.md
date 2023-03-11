# Day 00

## Exercise 10

### Command
``` bash
$ find . -type f -name "*#*" -print -delete -or -name "*~" -print -delete
```

---
### Process
I expected this exercise to take us to regular expressions, but mostly it was just an activity of dissecting the manual page for the ```find``` command. 


[Explain Shell](https://explainshell.com/explain?cmd=find+.+-type+f+-name+%22*%23*%22+-print+-delete++-or+-name+%22*%7E%22+-print+-delete "find breakdown") does a great job breaking down the individual components of this crafted shell command. 


> ...place the command line that will search for all files - in the current directory as well as in it's subdirectories - ending by ~ and/or all files that start or end by #. The command line will show and erase all files found. 

