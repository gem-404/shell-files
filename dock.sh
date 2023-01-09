#! /bin/bash

echo "Which service do you want {(1 = enable, 2 = disable)"
read resp

if [[ $resp == 1 ]]; then
    systemctl enable docker
    systemctl restart docker
fi

if [[ $resp == 2 ]]; then
    systemctl disable docker
    systemctl status docker
fi

# read -p "What is your name: " user_name
# read
# echo $REPLY
# read -sp "What is the password: " password # used for reading passwords from the user
# Reading multiple inputs using an array
# echo "Enter names: "
# read -a names # => Reads multiple inputs from a user as an array
