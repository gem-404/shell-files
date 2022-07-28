#!/bin/bash

file=$1 # Take this as an example of a file...

if test -f "$file"; then
    echo "$file exists"
fi

# or
if [ -f "$file" ]; then
    echo "$file exists"
fi


if [[ -f "$file" ]]; then
    echo "$file exists"
fi

if [[ -f "$file" ]]; then
    echo "$file exists"
else
    echo "$file does not exist"
fi

# testing the command without the if statement.

test -f "$file" && echo "$file exists"

[ -f "$file" ] && echo "$file exists"

[[ -f "$file" ]] && echo "$file exists"

[ -f "$file" ] && { echo "$file exist."; cp "$file" /tmp/; }

# if the exit status of the test is false..

[ -f "$file" ] && echo "$file exists" || echo "$file does not exist"
    

# CHECKING IF DIRECTORY EXISTS.

dir=/etc/docker

if [ -d "$dir" ]; then
    echo "$file is a directory."
fi

[ -d $dir ] && echo "$dir is a directory."


# CHECKING IF FILE DOES NOT EXIST DIRECTLY USING THE NEGATION COMMAND.

if [ ! -f "$file" ]; then
    echo "$file does not exist"
fi

[ ! -f "$file" ] && echo "$file does not exist."

# CHECKING IF MULTIPLE FILES EXIST.

if [ -f "$file" -a -f "$file2" ]; then
    echo "both files exist"
fi

if [[ -f "$file" && -f "$file2" ]]; then
    echo "both files exist"
fi

# one-liners.
[ -f "$file" -a -f "$file2" ] && echo "both files exist."

[[ -f "$file" && -f "$file2" ]]



# The test command includes the following FILE operators that allow you
# to test for particular types of files.

:'

-b FILE True if the FILE exists and is a special block file.
-c FILE True if the FILE exists and is a special character file.
-d FILE True if the FILE exists and is a directory.
-e FILE True if the FILE exists and is a file, regardless of type (node, directory, socket, etc).
-f FILE True if the FILE exists and is a regular file (not a directory or a device).
-G FILE True if the FILE exists and has the same group as the user running the command.
-h FILE True if the FILE exists and is a symbolic link.
-g FILE True if the FILE exists and has set-group-id (sgid) flag set.
-k FILE True if the FILE exists and has a sticky bit flag set.
-L FILE True if the FILE exists and is a symbolic link.
-O FILE True if the FILE exists and is owned by the user running the command.
-p FILE True if the FILE exists and is a pipe.
-r FILE True if the FILE exists and is readable.
-S FILE True if the FILE exists and is a socket.
-s FILE True if the FILE exists and has nonzero size.
-u FILE True if the FILE exists, and set-user-id (suid) flag is set.
-w FILE True if the FILE exists and is writable.
-x FILE True if the FILE exists and is executable.

'
