#!/bin/sh

start_and_wait() {
    "$@" &

    while ! pgrep -x "$(basename "$1")" >/dev/null; do
        sleep 0.05
    done
}

# ======================================================
# Start DBus Session and Communication ###
# ======================================================
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax)
    export DBUS_SESSION_BUS_ADDRESS DBUS_SESSION_BUS_PID
fi
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# ======================================================
# Start gpg-agent
# ======================================================
if ! pgrep -x gpg-agent >/dev/null; then
    eval $(gpg-agent --daemon)
fi

# ======================================================
# Launch Wallpaper Randomizer
# ======================================================
"$HOME/Pictures/Wallpaper/.cfg/wallpaper.sh"

# ======================================================
# Generate Themes
# ======================================================

# Load Xresources
xrdb -merge ~/.Xresources

# Load dwmblocks and dunst themes
~/.local/bin/dwmblocks-theme
~/.local/bin/dunst-theme

# ======================================================
# Hardware and Peripherals
# ======================================================

# Setup Monitor Screen
OUTPUT=$(xrandr | awk '
/^HDMI.* connected/ {print $1; exit}
/^DP.* connected/   {print $1; exit}
/^eDP.* connected/  {print $1; exit}
')
if [ -n "$OUTPUT" ]; then
    xrandr --output "$OUTPUT" --mode 1920x1080 --rate 180
fi

# Setup Laptop Touchpad
TP=$(xinput list --name-only | grep -i 'touchpad')
[ -n "$TP" ] && xinput set-prop "$TP" "libinput Tapping Enabled" 1 &

# Start Clipboard Manager
start_and_wait parcellite
# Start Audio Applet
start_and_wait pasystray
# Start Network Manager Applet
start_and_wait nm-applet

# Theme set
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"

# ======================================================
# Launch Compositor
# ======================================================
xcompmgr -c -C -t0 -l0 -r0 -o0.15 &

# ======================================================
# Interface and Notification
# ======================================================
dunst &

# Custom notifiers
bash "$HOME/.local/bin/custom-notifier/power-notifier-monitor" &
bash "$HOME/.local/bin/custom-notifier/usb-notifier-monitor" &

# ======================================================
# Launch DWM Blocks Status Bar
# ======================================================
dwmblocks &

# ======================================================
# Launch DWM
# ======================================================
dwm
