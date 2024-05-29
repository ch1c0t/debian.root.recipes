setxkbmap -layout "us,ru" -option "grp:caps_toggle,compose:ralt"
xrandr --output eDP-1 --brightness 0.7
xset b off
dbus-launch --exit-with-session i3
