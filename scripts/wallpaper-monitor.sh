#!/usr/bin/env bash

sed -zi 's/311_logo.png/311_logo_uw.png/2' /home/greatbot/.config/hypr/hyprpaper.conf
PID=$(ps -ef | awk '$8=="hyprpaper" {print $2}');
kill -9 ${PID};
hyprpaper > /dev/null 2>&1 &
