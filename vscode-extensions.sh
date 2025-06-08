#!/bin/bash
# Install all VSCode extensions listed in vscode-extensions.txt

while read extension; do
  echo "Installing $extension ..."
  code --install-extension "$extension"
done < vscode-extensions.txt
