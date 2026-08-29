#!/usr/bin/env bash

# ==============================================================================
# Hyprland Pro Setup - Installation Script
# ==============================================================================
# This script installs the optimized Hyprland & Waybar dotfiles.
# Features: Gestures, Custom Keybindings, Clean Waybar, Native Wayland configs.
# ==============================================================================

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting Hyprland Pro Setup Installation...${NC}"

# Define directories
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

# Ask for confirmation
echo -e "${YELLOW}WARNING: This will overwrite your current Hyprland and Waybar configurations.${NC}"
read -p "Do you want to continue? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Installation aborted."
    exit 1
fi

echo -e "${BLUE}Backing up existing configurations to ${BACKUP_DIR}...${NC}"
mkdir -p "$BACKUP_DIR"
[ -d "$CONFIG_DIR/hypr" ] && cp -r "$CONFIG_DIR/hypr" "$BACKUP_DIR/"
[ -d "$CONFIG_DIR/waybar" ] && cp -r "$CONFIG_DIR/waybar" "$BACKUP_DIR/"

echo -e "${BLUE}Copying new configurations...${NC}"

# Ensure destination directories exist
mkdir -p "$CONFIG_DIR/hypr/scripts"
mkdir -p "$CONFIG_DIR/waybar"
mkdir -p "$CONFIG_DIR/xdg-desktop-portal"

# Copy configurations
cp -rf "$SCRIPT_DIR/configs/hypr/"* "$CONFIG_DIR/hypr/"
cp -rf "$SCRIPT_DIR/configs/waybar/"* "$CONFIG_DIR/waybar/"
cp -rf "$SCRIPT_DIR/configs/xdg-desktop-portal/"* "$CONFIG_DIR/xdg-desktop-portal/"
cp -rf "$SCRIPT_DIR/configs/electron/"* "$CONFIG_DIR/"

# Set executable permissions for scripts
echo -e "${BLUE}Setting up executable permissions...${NC}"
find "$CONFIG_DIR/hypr/scripts" -type f -exec chmod +x {} \;
chmod +x "$CONFIG_DIR/waybar/launch.sh" 2>/dev/null || true
chmod +x "$CONFIG_DIR/waybar/toggle.sh" 2>/dev/null || true

echo -e "${GREEN}Installation Complete!${NC}"
echo -e "You can reload Hyprland to apply changes."
