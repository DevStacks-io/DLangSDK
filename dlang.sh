#!/bin/bash
echo ""
echo "[DLangSDK] Launching DevStacks Compiler..."
echo "Available Compilers:"
echo "- dclang"
echo "- dcplus"
echo "- drust"
echo "- dpy"
echo "- dgo"
echo ""

read -p "Enter compiler (e.g., dpy): " lang
if [[ -f "bin/$lang" ]]; then
    echo "Launching $lang..."
    ./bin/$lang
else
    echo "Compiler not found in bin/"
fi
