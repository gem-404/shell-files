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
            mv $pyfile $file
            nvim $file
            ;;
        js)
            mv $jsfile $file
            nvim $file
            ;;
        sh)
            mv $shfile $file
            nvim $file
            ;;
        *)
            nvim $file
            ;;
    esac
}

# Test if file exists in the given folder.

file_existence_tester() {
    # tests if a file exists in the given folder.
    file_adder
    exit
}

file_existence_tester
