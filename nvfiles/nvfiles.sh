#! /bin/bash

file=$1
ext=$(echo $file | cut -d "." -f 2)

pyfile=./main.py
jsfile=./main.js
shfile=./main.sh

# Test for the existence of file Argument given.
# If file is already present, the following rules
# should not apply and it needs just to be opened
# normally in neovim, otherwise, do the following.

file_adder() {
    case $ext in
        py)
            cat $pyfile > $file
            nvim $file
            ;;
        js)
            cat $jsfile > $file
            nvim $file
            ;;
        sh)
            cat $shfile > $file
            nvim $file
            ;;
        *)
            nvim $file
            ;;
    esac
}

# Test if file exists in the given folder.

file_existence_tester() {
    if [ -f "$file" ]; then  
        file_adder
    elif [ !-f -s "$file" ]; then
        nvim file_adder
    else
        file_adder
    fi
    exit
}

file_existence_tester
