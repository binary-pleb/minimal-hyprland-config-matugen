#!/usr/bin/env bash

set -e

echo "Installing required packages..."
sudo pacman -S --needed grim slurp satty nemo ttf-jetbrains-mono-nerd awww firefox hyprland waybar rofi-wayland hyprlock

CONFIG_DEST="$HOME/.config"

echo "Installing dotfiles..."


if [ -d "$CONFIG_DEST/hypr" ]; then
    rm -rf "$CONFIG_DEST/hypr"
fi
mkdir -p "$CONFIG_DEST/hypr"
cp "hypr"/* "$CONFIG_DEST/hypr"


if [ -d "$CONFIG_DEST/kitty" ]; then
    rm -rf "$CONFIG_DEST/kitty"
    mkdir -p "$CONFIG_DEST/kitty"
    cp "kitty"/* "$CONFIG_DEST/kitty"
else
    cp "kitty"/* "$CONFIG_DEST/kitty"
fi


if [ -d "$CONFIG_DEST/waybar" ]; then
    rm -rf "$CONFIG_DEST/waybar"
    mkdir -p "$CONFIG_DEST/waybar"
    cp "waybar"/* "$CONFIG_DEST/waybar"
else
    cp "waybar"/* "$CONFIG_DEST/waybar"
fi



if [ -d "$CONFIG_DEST/rofi" ]; then
    rm -rf "$CONFIG_DEST/rofi"
    mkdir -p "$CONFIG_DEST/rofi"
    cp "rofi"/* "$CONFIG_DEST/rofi"
else
    cp "rofi"/* "$CONFIG_DEST/rofi"
fi



if [ -d "$CONFIG_DEST/matugen" ]; then
    rm -rf "$CONFIG_DEST/matugen"
    mkdir -p "$CONFIG_DEST/matugen"
    cp "matugen"/* "$CONFIG_DEST/matugen"
else
    cp "matugen"/* "$CONFIG_DEST/matugen"
fi


if [ -d "$CONFIG_DEST/gtk-3.0" ]; then
    rm -rf "$CONFIG_DEST/gtk-3.0"
    mkdir -p "$CONFIG_DEST/gtk-3.0"
    cp "gtk-3.0"/* "$CONFIG_DEST/gtk-3.0"
else
    cp "gtk-3.0"/* "$CONFIG_DEST/gtk-3.0"
fi


if [ -d "$CONFIG_DEST/gtk-4.0" ]; then
    rm -rf "$CONFIG_DEST/gtk-4.0"
    mkdir -p "$CONFIG_DEST/gtk-4.0"
    cp "gtk-4.0"/* "$CONFIG_DEST/gtk-4.0"
else
    cp "gtk-4.0"/* "$CONFIG_DEST/gtk-4.0"
fi


mkdir -p $HOME/.local/bin
cp rofi-power-menu $HOME/.local/bin/
cp rofi-wall-switcher $HOME/.local/bin/

echo "Done! Log out and select Hyprland from your display manager or run start-hyprland if you're not using one."




