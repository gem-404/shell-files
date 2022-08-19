#!/bin/sh

for (( i = 0; i < 101; i++ )); do 

    case 0 in 
        $i%15 )
            echo "Fizzbuzz"
            ;;
        $i%5 )
            echo "Buzz"
            ;;
        $i%3 )
            echo "Fizz"
            ;;
        * )
            echo $i
            ;;
    esac
done
