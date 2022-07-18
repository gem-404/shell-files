#!/bin/sh

set_wallpaper() {
    current_swaybg_pid=$(pgrep -x swaybg)
    sh -c "swaybg -o \"*\" -i \"$1\" -m fill -c \"#000000\" > /dev/null 2>&1 &"
    sleep 0.5
    kill $current_swaybg_pid
}

fade_wallpaper() {
    convert $previous_wallpaper -resize $screen_resolution^ -gravity center -extent $screen_resolution /tmp/prev.jpg
    convert $wallpaper          -resize $screen_resolution^ -gravity center -extent $screen_resolution /tmp/next.jpg
    i=0; while [ "$i" -le 100 ]; do
        convert /tmp/prev.jpg /tmp/next.jpg -define compose:args=$i -compose blend -composite /tmp/wallpaper.jpg
        set_wallpaper "/tmp/wallpaper.jpg"
        i=$((i + 1))
    done
    rm /tmp/prev.jpg /tmp/next.jpg
}

IFS="
"

wallpaper_directory=$1
duration=$2
[ -z "$wallpaper_directory" ] && echo "Usage: $(basename $0) [DIRECTORY] [DURATION]" && exit 1
[ ! -d "$wallpaper_directory" ] && echo "Directory \'$wallpaper_directory\' does not exist" && exit 1
[ -z "$duration" ] && duration=60

sway_outputs="$(swaymsg -t get_outputs | jq)"
screen_resolution="$(echo $sway_outputs | jq -r '.[].rect.width')x$(echo $sway_outputs | jq -r '.[].rect.height')"

while true; do
    for wallpaper in $(find "$wallpaper_directory" -type f); do
        format=$(file "$wallpaper" | cut -d ":" -f 2 | cut -d " " -f 2)
        if [ "$format" = "JPEG" ] || [ "$format" = "PNG" ]; then
            [ -n "$previous_wallpaper" ] && fade_wallpaper || set_wallpaper "$wallpaper"
            previous_wallpaper="$wallpaper"
            sleep "$duration"
        fi
    done
done
