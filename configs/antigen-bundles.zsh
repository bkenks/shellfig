ANTIGEN_BUNDLEFIGS_DIR="$CONFIGS_DIR/antigen-bundlefigs"

antigen bundles <<EOBUNDLES
  zsh-users/zsh-autosuggestions
EOBUNDLES

BUNDLE_AUTOSUGG="$ANTIGEN_BUNDLEFIGS_DIR/zsh-autosuggestions.zsh"
if [[ -f "$BUNDLE_AUTOSUGG" ]]; then
    source "$BUNDLE_AUTOSUGG"
else
    echo "missing or unreadable: $BUNDLE_AUTOSUGG" >&2
fi

antigen apply