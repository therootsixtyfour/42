# Day 01

## Exercise 1

### Answer
``` bash
#!/bin/zsh

groups | sed 's/\ /,\ /g'
```


---
### Process
> man groups

Unfortunately ```groups``` can't be formatted with special flags, so I figured I had to pipe it into something else. ```sed``` (stream editor) ended up being the way I chose so that I could replace one space with a comma and a space across the whole output. ```tr``` (translate characters) wasn't an option as it only wanted to make 1-1 replacements, where in this case I needed to do 1-2. 



