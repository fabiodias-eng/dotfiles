#!/bin/bash

WALLPAPERS="~/Pictures/Wallpaper"
export DISPLAY=:$DISPLAY

sleep 1

# One single image to all monitors
feh --randomize --no-xinerama --bg-fill "$WALLPAPERS/"

# One different image for each monitor
#feh --randomize --bg-fill --slideshow-delay 3 "$WALLPAPERS/"
