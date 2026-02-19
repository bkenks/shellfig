# Starship Prompt
eval "$(starship init zsh)"

# Go
export PATH=$PATH:/usr/local/go/bin

# --- NVM ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# --- END "NVM" ---

# -----------------------------------------------------
# Linux Only
# -----------------------------------------------------
# Tags: configure_post_clone
# Uncomment these commands out if you are on linux

# Homebrew
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# -----------------------------------------------------
# END "H2"
# -----------------------------------------------------
