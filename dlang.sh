#!/bin/bash
echo "[DLangSDK] Launching DevStacks Compiler..."

# List of SDK directories
sdk_dirs=("bin/HobbyStackSDK" "bin/WebAppStackSDK" "bin/MobileStackSDK" "bin/BackendStackSDK" "bin/SystemsStackSDK" "bin/DataStackSDK")

# Show available compilers
echo "Available Compilers:"
for dir in "${sdk_dirs[@]}"; do
  for file in "$dir"/*.sh; do
    [ -f "$file" ] && echo "- $(basename "$file" .sh)"
  done
done

# Prompt user
read -p "Enter compiler (e.g., dpy): " compiler

# Search and execute
for dir in "${sdk_dirs[@]}"; do
  if [ -x "$dir/$compiler.sh" ]; then
    echo "Launching $compiler from $dir..."
    "$dir/$compiler.sh"
    exit 0
  fi
done

# If not found
echo "❌ Compiler '$compiler' not found in any SDK."
