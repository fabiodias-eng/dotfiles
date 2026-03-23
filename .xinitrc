#!/bin/sh
# ~/.xinitrc

# start DBus session
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax)
    export DBUS_SESSION_BUS_ADDRESS
    export DBUS_SESSION_BUS_PID
fi

# propagate to systemd environment
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# preload GTK/GVFS services
/usr/lib/gvfs/gvfsd &
/usr/lib/gvfs/gvfsd-fuse /run/user/$UID/gvfs &

# start Thunar daemon
#thunar --daemon &

# optional caches
#gtk-update-icon-cache
#fc-cache -fv

# network and hardware applets
nm-applet &
volumeicon &
#blueman-applet &
xcompmgr -c -C -t-4 -l-4 -r6 -o.45 &

(
	sleep 0.5
	"$HOME/Pictures/Wallpaper/.cfg/wallpaper.sh"
) &

# Start gpg-agent if not running
if ! pgrep -x gpg-agent > /dev/null; then
    eval $(gpg-agent --daemon)
fi

xrandr --output HDMI-1 --mode 1920x1080 --rate 120
# finally start dwm
export PATH="$HOME/.dwmblocks/statusbar:$PATH"
~/.dwmblocks/dwmblocks &
exec dwm

