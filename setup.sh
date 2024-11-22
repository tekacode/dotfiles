#!/bin/bash

# Symlink VS Code settings
# ln -sf /home/user/dotfiles/vscode-user-settings.json /home/user/dotfiles/.vscode/settings.json
# ln -sf /home/user/dotfiles/vscode-user-keybinding.json /home/user/dotfiles/.vscode/keybindings.json

# Add other symlinks as needed
#ln -sf ~/dotfiles/.bashrc ~/.bashrc
#ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# echo "Dotfiles setup complete!"

# Download the settings.json file from GitHub
curl -o /home/user/dotfiles/.vscode/settings.json https://raw.githubusercontent.com/tekacode/dotfiles/refs/heads/master/vscode-user-settings.json
# Download the keybindings.json file from GitHub
curl -o /home/user/dotfiles/.vscode/keybindings.json https://raw.githubusercontent.com/tekacode/dotfiles/refs/heads/master/vscode-user-keybinding.json
echo "VS Code settings have been fetched from the GitHub repository."