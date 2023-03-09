#!/bin/bash

existing_wms=("hyprland" "sway")
existing_devices=("desktop" "laptop")

wm=$1
device=$2

if [[ ! " ${existing_wms[@]} " =~ " ${wm} " ]]; then
    echo "Input WM does not exist!"
fi
if [[ ! " ${existing_devices[@]} " =~ " ${device} " ]]; then
    echo "Input device does not exist!"
fi

folders=("alacritty" "gammastep" "gtk-3.0" "mako" "mpv" "nwg-launchers" "nwg-look" "sway" "swaylock" "swayr" "Thunar" "waybar" "wofi")
files=(".azotebg" ".bash_profile" ".bashrc" ".bashrc_garuda" ".profile" ".xinitrc" ".zshrc")

for item in "${folders[@]}"; do
  cp -r ~/.config/"$item" "$wm"/"$device"/.config
done

for item in "${files[@]}"; do
  cp -r ~/"$item" "$wm"/"$device"
done

echo "Done!"