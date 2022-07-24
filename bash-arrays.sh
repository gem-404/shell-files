#!/bin/bash

tmux_names=('editor' 'main' 'misc' 'major' 'ranger' 'htop' 'stuff' 'new' 'last')

let number=9

if [ $# == 1 ]; then
    let number=$1
fi

for files in `seq 0 $(( $number-1 ))`; do
    echo ${tmux_names[$files]}
done

# for the full length of the bash array... use ==> echo ${#files[@]}

echo "The tmux_names array has a length of ${#tmux_names[@]}"
