# Day 00

## Exercise 1

### Result
``` bash
$ ls -l
-r--r-xr-x  1 user  staff  40  1 Jun  2023 testDay00
```
**man ls excerpt on the long format:** *If the modification time of the file is more than 6 months in the past or future, and the -D or -T are not specified, then the year of the last modification is displayed in place of the hour and minute fields.*


---
### Process
The assignment leaves a few hints as to what is expected. It explicitly states that it won't be looking at the year/time position, nor will the user/groups be the same. With that said, everything else is a mutable field to be manipulated in this assignment. The file must be created, appended, with modification date manipulated and the access permissions adjusted. 

1. Write the file 'testDay00'.
    ```bash
    touch testDay00
    ```
2. Write 40 characters to the file.
3. Change permissions 
    - Using the chmod [numerical positions](https://en.wikipedia.org/wiki/Chmod#:~:text=The%20chmod%20numerical%20format%20accepts,%2C%20setgid%2C%20and%20sticky%20flags. "chmod wiki")
    ```bash
    chmod 455 testDay00 
    ```
4. Modify access time
    - -mt flags change the modification time of the file
    ```bash
    touch -mt 202306012342 testDay00
    ```
    - I set the time specific here as requested in the challenge even though it doesn't display in the format above.


