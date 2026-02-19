# loader.zsh

# Directory containing this loader
export CONFIGS_DIR="$HOME/.config/zsh/configs"

# Array specifying order of configs to source
# Just use filenames (with .zsh extension) as they appear in configs/
CONFIG_ORDER=(
    "default.zsh"
    "aliases.zsh"
    "binaries.zsh"
    "exports.zsh"
    "antigen.zsh"
    "antigen-bundles.zsh"
)

load_zsh_configs_ordered() {
    local cfg_path
    local file

    for file in "${CONFIG_ORDER[@]}"; do
        cfg_path="$CONFIGS_DIR/$file"

        if [[ -f "$cfg_path" && -r "$cfg_path" ]]; then
            source "$cfg_path"
            echo "Loaded: $file"
        else
            echo "Skipped (missing or unreadable): $file" >&2
        fi
    done
}

load_zsh_configs_unordered() {
    for CONFIG in "$CONFIGS_DIR"/*; do
        # Skip if nothing matched
        [[ -e "$CONFIG" ]] || continue

        # Only source regular readable files
        if [[ -f "$CONFIG" && -r "$CONFIG" ]]; then
            source "$CONFIG"
            echo "Loaded: $CONFIG"
        else
            echo "Skipped (not a regular readable file): $CONFIG" >&2
        fi
    done
}

# Call the loader
load_zsh_configs_ordered
