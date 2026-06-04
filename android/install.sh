# most recent claude code using node cli instead of native binary
# since no native build for android
pkg install nodejs
npm install -g @anthropic-ai/claude-code@2.1.94
# create ~/.claude/settings.json with DISABLE_AUTOUPDATER if it doesn't exist
SETTINGS="$HOME/.claude/settings.json"
write_settings() {
    mkdir -p "$HOME/.claude"
    cat > "$SETTINGS" <<'EOF'
{
  "env": {
    "DISABLE_AUTOUPDATER": "1"
  }
}
EOF
}
if [ -f "$SETTINGS" ]; then
    read -r -p "$SETTINGS already exists. Overwrite? [y/N] " reply
    if [[ ! "$reply" =~ ^[Yy]$ ]]; then
        echo "Skipping $SETTINGS"
    else
        write_settings
    fi
else
    write_settings
fi

pkg install helix
