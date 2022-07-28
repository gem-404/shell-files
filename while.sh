#!/bin/bash

let sum=0

let counter=1

while [[ $counter -le 10 ]]; do
    let sum=$sum+$counter
    let counter=$counter+1
done

echo "sum = $sum"

