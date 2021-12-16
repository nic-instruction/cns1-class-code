#!/bin/bash
if [ -z "$1" ]
then
        echo "
        Usage: recover_vim_file.sh [path/to/vim/file]
        Example: recover_vim_file.sh filname.sh 
         This script recovers a vim and .swp file
        "
        exit 0;
fi
vimfile="$1"
tmpfile=".$vimfile.swp"
cp $vimfile $vimfile.bak
finddir=$(dirname $vimfile)
tmpfile=$(basename $vimfile)
tmpfile="$finddir/.$tmpfile.swp"
echo "the path to the message i will send users is $vimfile"
vim -u NONE -r "$tmpfile" -c 'w! '"$vimfile"'' -c 'wq!'
sdiff $vimfile $vimfile.bak
exit 0;
