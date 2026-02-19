#!/usr/bin/env zsh

# =====================================================
# Installer Script
# =====================================================

set -euo pipefail

# --- Variables ---
ZSHRC_SOURCE="$PWD/.zshrc"
ZSHRC_TARGET="$HOME/.zshrc"
ZSH_CONFIG_DIR="$HOME/.config/zsh"
CONFIGS_SOURCE="$PWD/zsh"

# --- Backup existing .zshrc if present ---
if [[ -f "$ZSHRC_TARGET" ]]; then
    TIMESTAMP=$(date +"%Y%m%d%H%M%S")
    BACKUP="$ZSHRC_TARGET.backup.$TIMESTAMP"
    echo "Backing up existing .zshrc to $BACKUP"
    cp "$ZSHRC_TARGET" "$BACKUP"
fi

# --- Install new .zshrc ---
echo "Installing new .zshrc to $ZSHRC_TARGET"
cp "$ZSHRC_SOURCE" "$ZSHRC_TARGET"

# --- Ensure ~/.config/zsh exists ---
if [[ ! -d "$ZSH_CONFIG_DIR" ]]; then
    echo "Creating directory $ZSH_CONFIG_DIR"
    mkdir -p "$ZSH_CONFIG_DIR"
fi

# --- Copy configs folder ---
echo "Copying configs folder to $ZSH_CONFIG_DIR"
if [[ -d "$ZSH_CONFIG_DIR" ]]; then
    echo "Removing existing configs folder at $ZSH_CONFIG_DIR"
    rm -rf "$ZSH_CONFIG_DIR"
fi
cp -r "$CONFIGS_SOURCE" "$ZSH_CONFIG_DIR"

echo "Installation complete!"

# =====================================================
# END "Installer Script"
# =====================================================
