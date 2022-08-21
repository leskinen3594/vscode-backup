@echo off

code --list-extensions > vs_code_extensions_list.txt

(for /f "tokens=*" %%l in (vs_code_extensions_list.txt) do (
    echo code --install-extension %%l >> install_ext_windows.txt
))