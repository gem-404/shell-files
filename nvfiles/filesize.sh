#!/bin/bash

echo "Select size format, use numerical values (1 for Bytes,  2 for Kilobytes, etc.)"
echo """
        1. Bytes
        2. KiloBytes
        3. MegaBytes
        4. GigaBytes
     """
echo "************************************************************************"
read format

echo "Enter the full path to the target file: "

read file

filesize=$(wc -c $file | awk '{print $1}')

if [[("$format" == 1)]];
then
    echo "$file is approx $filesize Bytes"

elif [[("$format" == 2)]];
then
    kb=$(bc <<<"scale=3; $filesize / 1024")
    echo "$file is approximately $kb KB"

elif [[("$format" == 3)]];
then
    mb=$(bc <<<"scale=6; $filesize / 1048576")
    echo "$file is approximately $mb MB"

elif [[("$format" == 4)]];
then
    gb=$(bc <<<"scale=12; $filesize / 1073741824")
    echo "$file is approximately $gb GB"

else
    echo "Incorrect format."
    exit
fi

: '

some other methods for finding filesize include:

file=filename.ext

filesize=`stat -c %s $file`
echo $filesize

newfilesize=`ls -lh $file | awk '{print $5}'`
echo $newfilesize
'
