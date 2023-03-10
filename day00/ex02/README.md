# Day 00

## Exercise 2

### Result
``` bash
$ ls -l
drwx--xr-x  3 user  staff  96  1 Jun  2023 test0
-rwx--xr--  1 user  staff   4  1 Jun  2023 test1
dr-x---r--  2 user  staff  64  1 Jun  2023 test2
-r-----r--  1 user  staff   1  1 Jun  2023 test3
-rw-r----x  1 user  staff   2  1 Jun  2023 test4
-r-----r--  1 user  staff   1  1 Jun  2023 test5
lrwxr-xr-x  1 user  staff   5  1 Jun  2023 test6 -> test0
```

---
### Process
This assignment is more practice on [exercise 1](https://github.com/therootsixtyfour/42/tree/main/day00/ex01 "exercise 1"), with a few extra challenges. We're making directories in addition to files, discovering what is counted in a text file, as well as setting up linked files in the case of test6

- Writing directories
    ```bash
    mkdir test0
    ```
- [Symlink](https://man7.org/linux/man-pages/man1/ln.1.html "ln man") test6
    ```bash
    ln -s test0 test6
    ```





