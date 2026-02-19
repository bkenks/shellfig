#!/usr/bin/env zsh

# =====================================================
# Installer Script
# =====================================================

set -euo pipefail

# --- Variables ---
ZSHRC_SOURCE="$PWD/.zshrc"
ZSHRC_TARGET="$HOME/.zshrc"
ZSH_CONFIG_DIR="$HOME/.config/zsh"
CONFIGS_SOURCE="$PWD/configs"
CONFIGS_TARGET="$ZSH_CONFIG_DIR/configs"

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
echo "Copying configs folder to $CONFIGS_TARGET"
if [[ -d "$CONFIGS_TARGET" ]]; then
    echo "Removing existing configs folder at $CONFIGS_TARGET"
    rm -rf "$CONFIGS_TARGET"
fi
cp -r "$CONFIGS_SOURCE" "$CONFIGS_TARGET"

echo "Installation complete!"

# =====================================================
# END "Installer Script"
# =====================================================
