#!/usr/bin/env bash
# shellcheck disable=all

# File: .zshrc
# Desc: Configures ZSH

ZSH_CONFIG_LOADER="$HOME/.config/zsh/loader.zsh"
if [[ -f $ZSH_CONFIG_LOADER ]]; then
    source "$ZSH_CONFIG_LOADER"
fi
