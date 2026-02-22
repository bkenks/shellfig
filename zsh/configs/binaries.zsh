# Starship Prompt
eval "$(starship init zsh)"

# Go
GO_URL="gitea.homektb.com"
export PATH=$PATH:/usr/local/go/bin
export GOPRIVATE=$GO_URL
export GONOSUMDB=$GO_URL

# --- NVM ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# --- END "NVM" ---

# =====================================================
# OS Dependent
# =====================================================
# Tags: configure_post_clone

# -----------------------------------------------------
# Homebrew
# -----------------------------------------------------

# --- Ubuntu ---
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# --- Mac (Silicon) ---
# eval "$(/opt/homebrew/bin/brew shellenv)"

# -----------------------------------------------------
# END "Homebrew"
# -----------------------------------------------------

# =====================================================
# END "OS Dependent"
# =====================================================
