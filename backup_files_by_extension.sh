#!/bin/bash
if [ -z "$3" ]
then
        echo "
        Usage: backup_files_by_extension.sh [file extension] [target directory] [backup directory] 
        Example: backup_files_by_extension.sh .text /home/arnold/backup
        this is backs up files from a certain directory to another"
exit 0;
fi
fileExtension="$1"
targetDir="$2"
finaldestinationDir="$3"
echo "file extension is: $fileExtension"
echo "target dir is: $targetDir"
echo "backup directory is: $finaldestinationDir"
if [ ! -d "$targetDir" ]
then
        echo "$targetDir" ]
        exit 0;
fi
find $targetDir -name "*$fileExtension" -exec cp {} $finaldestinationDir \;
