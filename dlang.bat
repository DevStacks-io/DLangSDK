@echo off
echo [DLangSDK] Launching DevStacks Compiler...

REM List of SDK directories
set SDK_DIRS=HobbyStackSDK WebAppStackSDK MobileStackSDK BackendStackSDK SystemsStackSDK DataStackSDK

echo Available Compilers:
for %%D in (%SDK_DIRS%) do (
    for %%F in (bin\%%D\*.exe) do (
        echo - %%~nF
    )
)

set /p compiler=Enter compiler (e.g., dpy):

set FOUND=0
for %%D in (%SDK_DIRS%) do (
    if exist "bin\%%D\%compiler%.exe" (
        echo Launching %compiler% from bin\%%D...
        start "" "bin\%%D\%compiler%.exe"
        set FOUND=1
        goto :done
    )
)

echo ❌ Compiler "%compiler%" not found in any SDK.

:done
