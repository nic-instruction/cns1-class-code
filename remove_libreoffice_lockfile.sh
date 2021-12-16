#!/bin/bash

if [ -z "$1" ]
then
        echo "
        Usage: remove_libreoffice_lockfile.sh [path to lockfile you want removed]
        Example: remove_libreoffice_lockfile.sh /home/root/company_maintanance.txt
        Please provide the path to remove the file you want
        "
        exit 0;
fi
filename="$1"
basename=$(basename $filename)
dirname=$(dirname $filename)
if [ ! -f "$filename" ]
then
        echo "The file name you have provided doesn't exist, please provide another filename"
        exit 0;
fi
if [ -f "$filename" ]
then rm $dirname/.~lock.$basename#
        echo "$filename has been removed"
        exit 0;
fi
