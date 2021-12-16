#!/bin/bash
  
# "Remove certain types of files" script. This script takes two arguments: a file extension and a target directory name.  The scrip
#t traverses the target directory and removes all files of the specified type. By default, it should print the name and path of ever
#y file it removes. It should also have a 'quiet' mode where it does not print anything. I recommend using the Linux find command wi
#th the -exec option to accomplish the meat of this functionality in your script."
if [ -z "$2" ]
then
        echo "
Usage: remove_files_by_extension.sh [file extension] [target directory]
example: remove_files_by_extension.sh .txt /speed
This script traverses the target directory and removes all files of the specified type"
exit 0;
fi
fileextension="$1"
targetdir="$2"
echo "file extension is: $fileextension"
echo "target dir is: $targetdir"
#add a print that states correct target directory is needed
if [ ! -d "$targetdir" ]
then
        echo "targetdir does not exist, enter correct target dir"
        exit 0;
fi
#command used to remove the file in the target directory
find "$targetdir" -name "*$fileextension" -delete
