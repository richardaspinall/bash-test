# Bash scripting intro

Ref: https://www.youtube.com/watch?v=PPQ8m8xQAs8

The `bash.sh` script has some intro commands and logic.

Additionally some extra helpful usage:

* `ifconfig | grep broadcast | awk '{print $2}'` Prints the IP address of the current host.

> Specifically `ifconfig`: gives back a bunch of system data, `|`: the first pipe pipes into `grep` which searches the text for a line with `broadcast` in it (which has the IP Address), `|`: second pipe pipes into `awk` which prints the second string `print $2`.

`grep`: https://www.geeksforgeeks.org/grep-command-in-unixlinux/
`awk`: https://www.geeksforgeeks.org/awk-command-unixlinux-examples/



