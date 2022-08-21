@echo off

SET extList = code --list-extensions

(for /f "tokens=*" %%l in (vs_code_extensions_list.txt) do (
    echo code --install-extension %%l >> install_ext_windows.bat
))