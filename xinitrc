keyboard() {
xset r rate 175 75
}


map_keys() {
cat - <<EOF > ~/.xbindkeysrc
"xdotool mousedown 2"
  F13

"xdotool mouseup 2"
  release + F13
EOF

# special
xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = F13"
xset -r 66

xbindkeys
}


widget() {
xterm -fa 'Iosevka Fixed Curly Medium' -fs 10 -class "$1" -e "$@" &
}

widgets() {
xrdb -merge /home/rodrigo/.Xresources
widget Htop btop -c /home/rodrigo/.config/btop/btop.conf
}


plan9() {
9 plumber
9 fontsrv -m /mnt/font &
}


effects() {
redshift &
}


keyboard
map_keys
widgets
plan9
effects

exec jwm
