#!/bin/bash

if  [ $# != 2 ]; then
    echo "This script requires 2 arguments"
    exit
fi

let sum=$1+$2

echo "The sum = $sum"
