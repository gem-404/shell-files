#! /bin/zsh

color=00000000
pointer=default
wrong="Fuck You"
noinput="Come'ON"
locktext="Huh, It's Locked Now!!!"
wrongcolor="FF1A2E"

# -e / --ignore-empty-password -> for ignoring empty passwords...
# -f for showing passwords failed attempts
# --wrong-color= # red color
# --verif-color= # green color
# --wrong-text="Fuck You"
# --noinput-text="Enough Deletion Now"
# --lock-text="Huh, It's Locked Now!!!"

i3lock -ef --color=$color -p $pointer --wrong-text="Fuck you" --noinput-text=$noinput --lock-text=$locktext --wrong-color=$wrongcolor

