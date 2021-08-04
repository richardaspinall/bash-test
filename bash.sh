#! /bin/bash

# Creating a variable and logging it out in a string with the echo command
STRING="Null Byte"
echo "Hackers love to learn on $STRING"

# Logging the 3 arguments $1.. back to the user who initiated the script
echo "I firmly believe that $1 is the best $2 for the office of $3"

# Running a command `whoami`
echo $(whoami)

# Asking for and reading input
echo "What is your name?"
read name

# Validating data
if [ $name ]; then
   echo "$name sounds alright to me"
else 
   echo "Doesn't sound like anything to me"
fi
