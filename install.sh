#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing required packages..."
sudo pacman -S --needed grim slurp satty nemo ttf-jetbrains-mono-nerd awww firefox hyprland waybar rofi-wayland hyprlock

CONFIG_DEST="$HOME/.config"

echo "Installing dotfiles..."

for dir in hypr kitty waybar rofi matugen gtk-3.0 gtk-4.0; do
    if [ -d "$SCRIPT_DIR/$dir" ]; then
        rm -rf "$CONFIG_DEST/$dir"
        mkdir -p "$CONFIG_DEST/$dir"
        cp -r "$SCRIPT_DIR/$dir"/* "$CONFIG_DEST/$dir"
    else
        echo "Warning: $SCRIPT_DIR/$dir not found, skipping"
    fi
done

mkdir -p "$HOME/.local/bin"
cp "$SCRIPT_DIR/rofi-power-menu" "$HOME/.local/bin/"
cp "$SCRIPT_DIR/rofi-wall-switcher" "$HOME/.local/bin/"

echo "Done! Log out and select Hyprland from your display manager or run start-hyprland if you're not using one."
