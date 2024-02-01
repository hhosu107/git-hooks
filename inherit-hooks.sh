#!/bin/bash

# Your public repository URL
REPO_URL="https://github.com/hhosu107/git-hooks.git"

# Temporary directory to clone hooks repository
TEMP_DIR="$(mktemp -d)"

# Clone hooks repository
git clone "$REPO_URL" "$TEMP_DIR"

# Copy hooks to the new repository
cp -r "$TEMP_DIR/hooks" .git/

# Clean up temporary directory
rm -rf "$TEMP_DIR"

echo "Hooks inherited successfully!"

