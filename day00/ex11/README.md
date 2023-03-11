# Day 00

## Exercise 11

### Result
``` bash
41 string 42 42 file
```

---
### Process
The ft_magic can be passed to the ```file -m```  command as an argument, as instructions to the 'magic test' on what to look for and where. 

1. start looking at byte 42 [0 indexed]
2. there you'll find a string
3. that string will be '42'
4. then you'll return the '42 file' type

[IBM Documentation](https://www.ibm.com/docs/en/zos/2.4.0?topic=formats-magic-format-etcmagic-file "IBM on file magic") was the most helpful at understanding this.






*"... a trick is something a whore does for money."*