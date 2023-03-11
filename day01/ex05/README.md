# Day 01

## Exercise 5

### Answer
``` bash
echo -n "42\c" > \"\\\?\$\*\'KwaMe\'\*\$\?\\\"
```


---
### Process
Every single special character has to be escaped. Also some commands in the shell don't know what to do with escaped file names like this (```sed```). Thankfully ```echo``` did. 


READ THE MANUALS

I went down some absurd rabbit holes about that escape character at the end of the text file. Turns out is was just there in the documentation the whole time. 
> ```man echo```

> *... ```-n    Do not print the trailing newline character.  This may also be achieved by appending ‘\c’ to the end of the string```*