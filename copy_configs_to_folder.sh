#!/bin/bash

existing_wms=("hyprland" "sway")
existing_devices=("desktop" "laptop" "fedora")

wm=$1
device=$2

mkdir "$wm"/"$device"/.config

execfolders=("alacritty" "gammastep" "nwg-look" "swaylock" "swayr" "waybar" "fish" "hypr" "qt5ct" "Kvantum" "rofi" "mpv" "swww" "wlogout" "dunst" "xsettingsd" "gtk-3.0")
files=( ".bashrc" ".profile" ".XCompose" )

for item in "${execfolders[@]}"; do
  cp -r ~/.config/"$item" "$wm"/"$device"/.config
done

for item in "${files[@]}"; do
  cp -r ~/"$item" "$wm"/"$device"
done

echo "Done!"
