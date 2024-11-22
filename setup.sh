#!/bin/bash

# Symlink VS Code settings
ln -sf ~/dotefiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -sf ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

# Add other symlinks as needed
ln -sf ~/dotefiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

echo "Dotefiles setup complete!"