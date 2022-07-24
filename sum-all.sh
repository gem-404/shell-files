#!/bin/bash

if [ $# != 1 ]; then
    echo "This script requires one argument"
    exit
fi

let sum=0
for i in `seq 1 $1`; do
    let sum=$sum+$i
done

echo "The sum = $sum"
