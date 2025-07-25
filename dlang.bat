@echo off
echo.
echo [DLangSDK] Launching DevStacks Compiler...
echo Available Compilers:
echo - dclang
echo - dcplus
echo - drust
echo - dpy
echo - dgo
echo.

set /p lang="Enter compiler (e.g., dpy): "
if exist bin\%lang%.exe (
    echo Launching %lang%...
    bin\%lang%.exe
) else (
    echo Compiler not found in bin\
)
