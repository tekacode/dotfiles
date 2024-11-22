#!/bin/bash

# Define the .vscode folder in the current directory
VSCODE_DIR="./.vscode"

# Define the base URL for the remote repository
REPO_URL="https://raw.githubusercontent.com/tekacode/dotfiles/refs/heads/master"


# Create or clean the .vscode folder
if [ -d "$VSCODE_DIR" ]; then
    echo "Cleaning existing .vscode directory..."
    rm -rf "$VSCODE_DIR"
fi
echo "Creating .vscode directory..."
mkdir -p "$VSCODE_DIR"

# Download settings.json
echo "Downloading settings.json..."
curl -o "$VSCODE_DIR/settings.json" "$REPO_URL/vscode-user-settings.json"

# Download keybindings.json
echo "Downloading keybindings.json..."
curl -o "$VSCODE_DIR/keybindings.json" "$REPO_URL/vscode-user-keybinding.json"

# Download extensions.json
echo "Downloading extensions.json..."
curl -o "$VSCODE_DIR/extensions.json" "$REPO_URL/vs-code-global-extensions.json"

echo "Setup complete! The .vscode folder and files have been created or updated in the current folder."