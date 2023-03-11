# Day 01

## Exercise 3

### Answer
```bash
#!/bin/zsh

find . -type f -or -type d | wc -l
```


---
### Process
> *"Write a command line that counts and displays the number of regular files and directories in the current directory and all its sub-directories. It should include '.', the starting directory"*

The keyword here being **and** which of course meant I had to use ```-or```. Go figure.
This command is using the ```-type f``` flag to find files, as well as the ```-type d```  to find the directories. Pipe this over to ```wc``` and count the lines using the ```-l``` flag.



