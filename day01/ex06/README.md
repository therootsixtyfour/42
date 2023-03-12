# Day 01

## Exercise 6

### Answer
``` bash
#!/bin/zsh

ls -l | awk "NR % 2 == 0" 
```


---
### Process
> man awk

I took a little creative liberty with the instructions on this one, choosing to list the EVEN row numbers (```%2 == 0```), since the first line output of the ```ls -l``` is actually the blocks taken up by those files, and not actually part of the list of files in the first place. 

```awk``` looks like a powerful tool capable of advanced manipulation using some fundamental math. Theres an [entire syntax](https://linux.die.net/man/1/awk) to learn here.

> *list long-form the current directory, use awk and return the row numbers who's modulo remainder is 0 (even).*



