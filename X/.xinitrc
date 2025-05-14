#!/bin/sh

prefix="/usr"
exec_prefix="${prefix}"
xrdb="xrdb"
xinitdir="/etc/X11/xinit"
xclock="xclock"
xterm="xterm"
twm="twm"
xmodmap="xmodmap"

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="$xinitdir/.Xresources"
sysmodmap="$xinitdir/.Xmodmap"

# merge in defaults and keymaps

if [ -f "$sysresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$sysresources"
    else
        "$xrdb" -nocpp -merge "$sysresources"
    fi
fi

if [ -f "$sysmodmap" ]; then
    "$xmodmap" "$sysmodmap"
fi

if [ -f "$userresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$userresources"
    else
        "$xrdb" -nocpp -merge "$userresources"
    fi
fi

if [ -f "$usermodmap" ]; then
    "$xmodmap" "$usermodmap"
fi

# start some nice programs

if [ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

setxkbmap it &
xset r rate 200 60 &
xset b off &
xinput set-prop "SYNA8018:00 06CB:CE67 Touchpad" "libinput Tapping Enabled" 1 &
sxhkd &
mpv --volume-gain=10 /home/greatbot/media/vista.mp3 &

if [[ $(xrandr | awk '/HDMI-1/ {print $2}') == "connected" ]]; then
	xrandr --output HDMI-1 --mode 2560x1080 --rate 60;
	xrandr --output eDP-1 --off;
	feh --bg-fill /home/greatbot/wallpapers/default_uw.png;
	exec /usr/local/bin/dwm;
else
	xrandr --output eDP-1 --mode 1920x1200 --rate 60;
	feh --bg-fill /home/greatbot/wallpapers/default.png;
	exec /usr/local/bin/dwm;
fi
