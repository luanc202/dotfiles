#!/bin/bash

folders=("alacritty" "gammastep" "gtk-3.0" "mako" "mpv" "nwg-launchers" "nwg-look" "sway" "swaylock" "swayr" "Thunar" "waybar" "wofi")
files=(".azotebg" ".bash_profile" ".bashrc" ".bashrc_garuda" ".profile" ".xinitrc" ".zshrc")

for item in "${folders[@]}"; do
  cp -r "~/.config/$item" "."
done

for item in "${files[@]}"; do
  cp -r "~/.config/$item" "."
done

echo "Done!"