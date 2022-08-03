#!/bin/bash

echo "Enter a character: "
read var

case $var in
    # [a-z])
    #     echo "You entered a lowercase character."
    # ;;

    ([[:lower:]])
        echo "You entered a lowercase letter"
    ;;

    # [A-Z])
    #     echo "Yoe entered an uppercase character"
    # ;;

    ([[:upper:]])
        echo "You entered an uppercase letter"
    ;;

    # [0-9])
    #     echo "You entered a digit."
    # ;;

    ([[:digit:]])
        echo "You entered a digit."
    ;;

    # ?)
    #     echo "You entered a special character"
    # ;;

    (" ")
        echo "You entered nothing you son of a bitch"
    ;;

    ([[:alpha:]])
        echo "You neither entered an uppercase or a lowercase letter"
    ;;

    (" ")
        echo "You entered nothing you son of a bitch"
    ;;

    *)
        echo "You entered a special character"
    ;;

esac
