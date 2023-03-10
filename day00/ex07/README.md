# Day 00

## Exercise 7

### Answer
``` bash
$ ls -Ump
```

---
### Process
I spent too long overthinking this one, thinking that ```ls``` didn't have the ability to list the creation time of a file. 

- ```-U``` Use time when file was created for sorting or printing.  This option is not defined in IEEE Std 1003.1-2008 (“POSIX.1”).
- ```-m``` Stream output format; list files across the page, separated by commas.
- ```-p``` Write a slash (‘/’) after each filename if that file is a directory.

### Afterthought
This challenge suggest to READ THE FUCKING MANUAL. So there ya go. 

However, in my searching and digging I got intimate with the [```stat``` command](https://www.howtogeek.com/451022/how-to-use-the-stat-command-on-linux/ "man stat") and got pretty close, and learned a lot about formatting outputs, as well as types of linux kernels 

*files example from exercise 2*
```bash
$ stat -f "%SB %N%T" * | sort  
Mar 10 08:12:21 2023 test0/
Mar 10 08:12:21 2023 test2/
Mar 10 08:12:45 2023 test3
Mar 10 08:12:45 2023 test4*
Mar 10 08:12:45 2023 test5
Mar 10 08:19:50 2023 test1*
Mar 10 08:34:25 2023 test6@
```

where the quotes host multiple formatting settings, SB is human readable birth time of the file (if your system tracks that), and NT is the filename and type output. This was giving me more than I needed, and wasn't any more adaptable for comma delineation so that track was abandoned. I learned a lot here, so the time wasn't wasted.