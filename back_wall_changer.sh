#!/bin/bash

file=$HOME/.wallpapers.txt

total_lines=`wc -l $file | cut -f 1 -d " "`

lines=`expr $total_lines - 1 `

pic=`head -n $lines $file | tail -n 1`


wal -qi $pic

# some logic to delete old lines in our wallpapers file if the
# file is more than 10 lines long

if [[ $total_lines -gt 10 ]]; then
    cat `head -n 10 $file | tail -n 5` > $file
fi
