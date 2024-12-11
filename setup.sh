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

# Check if a parameter was passed
if [ -z "$1" ]; then
    echo "No parameter provided. Please pass a parameter (e.g., Angular)."
    exit 1
fi

# Define the parameter and corresponding color mappings
PARAMETER="$1"
declare -A COLORS
COLORS[Angular]="#e803fc #e803fc99"
COLORS[React]="#61DBFB #61DBFB99" # Add more mappings if needed
COLORS[Spring]="#6DB33F #6DB33F99" # Add more mappings if needed
COLORS[JavaScript]="#8B8000 #8B800099" # Add more mappings if needed
COLORS[Java]="#f89820 #f8982099" # Add more mappings if needed
COLORS[Python]="#FFD43B #4B8BBE99" # Add more mappings if needed

# Check if the parameter has a defined color mapping
if [ -z "${COLORS[$PARAMETER]}" ]; then
    echo "No color mapping found for parameter: $PARAMETER"
    exit 1
fi

# Split the color mapping into an array
IFS=' ' read -r -a NEW_COLORS <<< "${COLORS[$PARAMETER]}"

# Function to replace patterns in a file
replace_patterns() {
    local file="$1"
    echo "Modifying $file"

    # Match both 6-character and 8-character hex codes
    sed -i "s/\"activityBar.activeBackground\": \"#[a-fA-F0-9]\{6,8\}\"/\"activityBar.activeBackground\": \"${NEW_COLORS[1]}\"/g" "$file"
    sed -i "s/\"activityBar.background\": \"#[a-fA-F0-9]\{6,8\}\"/\"activityBar.background\": \"${NEW_COLORS[1]}\"/g" "$file"
    sed -i "s/\"titleBar.activeBackground\": \"#[a-fA-F0-9]\{6,8\}\"/\"titleBar.activeBackground\": \"${NEW_COLORS[1]}\"/g" "$file"
    sed -i "s/\"statusBar.background\": \"#[a-fA-F0-9]\{6,8\}\"/\"statusBar.background\": \"${NEW_COLORS[1]}\"/g" "$file"
    sed -i "s/\"titleBar.inactiveBackground\": \"#[a-fA-F0-9]\{6,8\}\"/\"titleBar.inactiveBackground\": \"${NEW_COLORS[1]}\"/g" "$file"

    sed -i "s/\"statusBarItem.hoverBackground\": \"#[a-fA-F0-9]\{6,8\}\"/\"statusBarItem.hoverBackground\": \"${NEW_COLORS[0]}\"/g" "$file"
    sed -i "s/\"statusBarItem.remoteBackground\": \"#[a-fA-F0-9]\{6,8\}\"/\"statusBarItem.remoteBackground\": \"${NEW_COLORS[0]}\"/g" "$file"
    sed -i "s/\"sash.hoverBorder\": \"#[a-fA-F0-9]\{6,8\}\"/\"sash.hoverBorder\": \"${NEW_COLORS[0]}\"/g" "$file"
}


# Download settings.json and modify it
echo "Downloading and modifying settings.json..."
curl -s "$REPO_URL/vscode-user-settings.json" -o "$VSCODE_DIR/settings.json"
replace_patterns "$VSCODE_DIR/settings.json"

# Download keybindings.json (no modification needed)
echo "Downloading keybindings.json..."
curl -s "$REPO_URL/vscode-user-keybinding.json" -o "$VSCODE_DIR/keybindings.json"

# Download extensions.json (no modification needed)
echo "Downloading extensions.json..."
curl -s "$REPO_URL/vs-code-global-extensions.json" -o "$VSCODE_DIR/extensions.json"

echo "Setup complete! The .vscode folder and files have been created or updated in the current folder."

# this file needs to be updated to work on Ubuntu