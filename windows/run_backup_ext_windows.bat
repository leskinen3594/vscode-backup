@echo off

(for /f "tokens=*" %%l in (code --list-extensions) do (
    echo code --install-extension %%l >> install_ext_windows.txt
))

echo "[FINISH!] write install extensions command to install_ext_windows.txt"