 # Day 01

## Exercise 1

### Answer
``` bash
#!/bin/zsh

find . -type f -not -name "*.sh"  
```


---
### Process
Building on [yesterday's experience](https://github.com/therootsixtyfour/42/tree/main/day00/ex10 "day00, ex10") with the ```find``` command, this time adding the understanding of the unary flag ```-not```

>*"find in the current directory files that are not named with the extension .sh"*