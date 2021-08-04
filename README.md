# Bash scripting intro

Ref: https://www.youtube.com/watch?v=PPQ8m8xQAs8

The `bash.sh` script has some intro commands and logic.

## Some extra helpful usage of Bash with a few other commands:

- `ifconfig | grep broadcast | awk '{print $2}'` Prints the IP address of the current host.

> Specifically `ifconfig`: gives back a bunch of system data, `|`: the first pipe pipes into `grep` which searches the text for a line with `broadcast` in it (which has the IP Address), `|`: second pipe pipes into `awk` which prints the second string `print $2`.

`grep`: https://www.geeksforgeeks.org/grep-command-in-unixlinux/
`awk`: https://www.geeksforgeeks.org/awk-command-unixlinux-examples/

## What-time-is-it.sh

Ref: https://astrobiomike.github.io/unix/modifying_your_path

- `current_time=$(date | tr -s " " "\t" | cut -f 5 | cut -d ":" -f 1,2,3)`

^ Piping along to each command:

1. `date` command outputs the following format `Wed 4 Aug 2021 18:43:59 AEST`
2. `date | tr -s " " "\t"` Taking the date and swapping out the space delimiter for a tab (because cut uses this)
3. `| cut -f 5` cutting the 5th field (deliminated by tabs)
4. `cut -d ":" -f 1,2)` cutting the 1st and 2nd fields deliminated by `:`

Ref: https://www.geeksforgeeks.org/cut-command-linux-examples/

## Add the above script so we can access it from anywhere

### Temporarily

1. View current `$PATH` variable (cleanly via new lines) `echo $PATH | tr ":" "\n"`
2. `export PATH="$PATH:/Users/raspinall/Desktop/bash-test"`
3. Echo the $PATH again and then try and use the bash script anywhere in the current session

### Permanently

1. Find the `.zshrc` or `.bash_profile` file in `~` with `ls -a` (all hidden files)
2. Add the path `export PATH="$PATH:/Users/raspinall/Desktop/bash-test"`

Note: `PATH=$PATH:...` is simply concatenating the whole previous path (deliminated by `:` colons) with our new path we want to add
