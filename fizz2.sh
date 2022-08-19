#!/bin/sh


fizz() {
    for ((i=0; i<=100; i++)); do 
        if (($i%15==0)); then
            echo "Fizzbuzz"
        elif (($i%5==0)); then
            echo "Buzz"
        elif (($i%3==0)); then
            echo "Fizz"
        else
            echo $i
        fi
    done 
}

fizz
