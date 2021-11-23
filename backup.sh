#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------
#
# Reference; https://dev.to/loupeznik/how-to-backup-your-vs-code-extensions-and-settings-4cji
#
# -------------------------------------------------------------------------------------------------


# Make directory
backup_dir="${HOME}/vscode-backup"
if [ ! -d "${backup_dir}" ]; then
    echo "Make directory... as ${HOME}"
    mkdir "${backup_dir}"
else
    echo "Found backup dir... $backup_dir"
fi


# Change dir
echo "Change directory..."
cd $backup_dir
echo "Im in `pwd`"


# List extensions installed and save as ext.
echo "List extensions > ext"
code --list-extensions | xargs -L 1 echo code --install-extension > ext


# Save setting.json or other config file .json
echo "Save config .json"
cd $HOME/.config/Code/User
tar -czf vscode-config.tar.gz *.json
mv vscode-config.tar.gz $backup_dir


echo "Done!"
