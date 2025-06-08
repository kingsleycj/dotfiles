#!/bin/bash

echo "Setting up symlinks..."

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

echo "Reloading shell..."
exec zsh
