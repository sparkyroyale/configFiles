#!/bin/bash
wallpapers=(/home/michael/Pictures/Wallpapers/*)
random_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"

# Update hyprpaper config
echo "preload = $random_wallpaper" > ~/.config/hypr/hyprpaper.conf
echo "wallpaper = eDP-1,$random_wallpaper" >> ~/.config/hypr/hyprpaper.conf

# Reload hyprpaper
hyprctl hyprpaper unload all
hyprpaper &
