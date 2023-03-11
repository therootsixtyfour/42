# Day 01

## Exercise 4

### Answer
``` bash
#!/bin/zsh

ifconfig | grep "ether " | cut -d ' ' -f 2
```


---
### Process
> man ifconfig

The manual on ```ifconfig``` is a little dense. So first we had to learn what [MAC addressss](https://en.wikipedia.org/wiki/MAC_address) are. Then figure out where in the output of ifconfig. Turns out it is proceeded by 'ether '. Grep that out of the noise, and then pass it to ```cut```. 

I wanted so badly for ```sed``` to do this, but I couldn't make it work elegantly. ```cut``` to the rescue!

It is actually pretty neat. ```-d``` tells ```cut``` to find the spaces (```' '```) and treat them as the delineator. That leaves us with two columns ('ether' and the MAC address), of which we want to cut (and keep) the second in that list (```-f 2```).

