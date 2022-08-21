@echo off

(for /f "tokens=*" %%l in (install_ext_windows.txt) do (
    %%l
))

echo DONE!