#!/usr/bin/env bash

HYPERCTL_PATH=$(which hyprctl)

$HYPERCTL_PATH monitors | grep 0x0003F3ED 1> /dev/null;

if [ $? -eq 0 ]; then
    $HYPERCTL_PATH --batch "keyword monitor eDP-1,disable ; keyword monitor HDMI-A-1,2560x1080@60,0x0,1";
    $HOME/.config/scripts/wallpaper-monitor.sh
else
    $HYPERCTL_PATH keyword monitor eDP-1,1920x1080@69,0x0,1;
    $HOME/.config/scripts/wallpaper-laptop.sh
fi
