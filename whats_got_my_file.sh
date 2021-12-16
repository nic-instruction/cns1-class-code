#!/bin/bash
# "What's got my file?" script. This script takes a file name as an argument and returns the PID of the process and
# the username of the user who has the file open. I recommend using lsof to accomplish the meat of this task.
# __
if [ -z "$1" ]
then
        echo "
        Usage: whats_got_my_file.sh [path to file you want to know username and pid of process using]
        Example: whats_got_my_file.sh /usr/share/bob.odt
        Please provide the path to the file you would like to know what user and pid is being used
        "
        exit 0;
fi
file="$1"
echo "the path to the file I will give you information about is $file"
if [ ! -e "$file" ]
then
        echo "The file name you have provided doesn't exist, please provide another filename"
        exit 0;
fi
lsof | grep $file | awk '{print $1 $2}'
