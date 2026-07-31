#!/usr/bin/env bash
set -e

THEME_DIR="$(cd "$(dirname "$0")" && pwd)"

# Waybar
cp "$THEME_DIR/waybar.css" ~/.config/omarchy/current/theme/waybar.css
cp "$THEME_DIR/waybar.jsonc" ~/.config/waybar/config.jsonc

# Walker
cp "$THEME_DIR/walker.css" \
  ~/.local/share/omarchy/default/walker/themes/omarchy-default/style.css

# Theme files
cp "$THEME_DIR/looknfeel.conf" ~/.config/omarchy/current/theme/looknfeel.conf
cp "$THEME_DIR/looknfeel.conf" ~/.config/hypr/looknfeel.conf

cp "$THEME_DIR/colors.toml" ~/.config/omarchy/current/theme/colors.toml
cp "$THEME_DIR/mako.ini" ~/.config/omarchy/current/theme/mako.ini
cp "$THEME_DIR/hyprlock.conf" ~/.config/omarchy/current/theme/hyprlock.conf

# Hyprlock base config
cp "$THEME_DIR/hyprlock.conf.base" ~/.config/hypr/hyprlock.conf

# Backgrounds
mkdir -p ~/.config/omarchy/current/theme/backgrounds
cp -r "$THEME_DIR/backgrounds/." ~/.config/omarchy/current/theme/backgrounds/

# Reload services
omarchy-restart-waybar
omarchy-restart-walker
omarchy-restart-mako
omarchy-refresh-hyprlock
omarchy-refresh-hyprland

echo "✓ Liquid Glass installed."
