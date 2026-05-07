map_keys() {
xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = F13"
xset -r 66
}

keyboard() {
xset r rate 175 75

map_keys
}


mouse() :


widget() {
cls="$1"
shift
xterm -fa 'Iosevka Fixed Curly Medium' -fs 10 -class "$cls" -e "$@" &
}

widgets() {
xrdb -merge /home/rodrigo/.Xresources

widget Btop btop -c /home/rodrigo/.config/btop/btop.conf
}


effects() {
redshift &
}


audio() {
pulseaudio --start
}


wallpaper() {
feh --bg-center /home/rodrigo/Documents/walls/a_painting_of_a_building_in_the_desert.png
}


keyboard
mouse
widgets
effects
audio
wallpaper

exec dbus-run-session jwm
