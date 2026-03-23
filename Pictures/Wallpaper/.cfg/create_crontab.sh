#!/bin/bash

crontab -l > wp_cron

echo "*/10 * * * * DISPLAY=:$DISPLAY ~/Pictures/Wallpaper/.cfg/wallpaper.sh" >> wp_cron

crontab wp_cron

rm wp_cron

service cron reload

