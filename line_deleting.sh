#!/bin/bash

del_func() {
    if [ $# -eq 0 ]; then
        sed -i "$d" ~/Desktop/todo.txt
        exit 1
    else
        sed -i $"$1"d ~/Desktop/todo.txt
    fi
}

del_func() {
    if [ -z "$1" ]
    then
        echo "no argument supplied"
    fi
}

# for removing the first line
# sed -i "1d" filename

# for removing the last line
# sed -i "$d" filename.txt

# for deleting a range of lines
# sed -i '11,15d' filename


# Remove lines containing a string
# sed -i '/string/d' filename

# Remove lines starting with a word
# sed -i /^word/d filename

# Remove all empty lines
# sed -i '/^$/d' filename
