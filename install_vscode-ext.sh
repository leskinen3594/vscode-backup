#!/usr/bin/env bash


# Unzip *.json
echo "Unzip config files... *.json"
tar -xvzf vscode-config.tar.gz -C $HOME/.config/Code/User


# Install vscode extensions.
echo "vscode extensions installing..."
./ext

# List extensions installed.
echo "Alll extensions installed."
code --list-extensions | xargs -L 1 echo code --install-extension


echo "Done!"
