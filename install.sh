#!/usr/bin/env bash
set -e

THEME_DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$THEME_DIR/waybar.css" ~/.config/omarchy/current/theme/waybar.css
cp "$THEME_DIR/waybar.jsonc" ~/.config/waybar/config.jsonc

cp "$THEME_DIR/walker.css" \
  ~/.local/share/omarchy/default/walker/themes/omarchy-default/style.css

cp "$THEME_DIR/looknfeel.conf" ~/.config/omarchy/current/theme/looknfeel.conf
cp "$THEME_DIR/colors.toml" ~/.config/omarchy/current/theme/colors.toml

mkdir -p ~/.config/omarchy/current/theme/backgrounds
cp -r "$THEME_DIR/backgrounds/." ~/.config/omarchy/current/theme/backgrounds/

omarchy-restart-waybar
omarchy-restart-walker

echo "✓ Liquid Glass installed."
