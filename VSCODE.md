# VS Code Extensions Backup & Restore

This guide explains how to export your currently installed Visual Studio Code extensions into a file, and then use a shell script to reinstall all of them later. This is useful when setting up a new machine or sharing your development environment.

## How to Export Your Extensions
Run the following command in your terminal or command prompt to list all installed extensions and save them to a file:

```bash 
code --list-extensions > vscode-extensions.txt
```
This creates a file named vscode-extensions.txt containing all your extension IDs, one per line.

## How to Create the Installation Script
Create a file named vscode-extensions.sh with the following content:
```bash 
#!/bin/bash
# Installs all VS Code extensions listed in vscode-extensions.txt

while read extension; do
  echo "Installing $extension ..."
  code --install-extension "$extension"
done < vscode-extensions.txt
```
Make sure the vscode-extensions.txt file is in the same directory as this script.

## How to Run the Installation Script
- Give the script execute permission:

```bash 
chmod +x vscode-extensions.sh
 ```

- Run the script:

```bash
./vscode-extensions.sh
```
The script will install each extension listed in the vscode-extensions.txt file one by one.

## Summary
1. Export extensions: code --list-extensions > vscode-extensions.txt

2. Create script: vscode-extensions.sh (see above)

3. Run script: chmod +x vscode-extensions.sh && ./vscode-extensions.sh

### Notes
- Make sure the code command is available in your terminal (you can enable this in VS Code via Command Palette → Shell Command: Install 'code' command in PATH).

- This method works on any OS with VS Code installed.

- You can version control your vscode-extensions.txt and vscode-extensions.sh files in your dotfiles repo.

