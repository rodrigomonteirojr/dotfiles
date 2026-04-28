xset r rate 175 75
xrdb -merge /home/rodrigo/.Xresources
xterm -fa 'Iosevka Fixed Curly Medium' -fs 10 -class Htop -e btop -c ~/.config/btop/btop.conf &
9 plumber
9 fontsrv -m /mnt/font &
redshift &
exec jwm
