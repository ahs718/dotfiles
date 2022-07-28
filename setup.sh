#!/bin/zsh

# Variables
dotfiles_dir=~/Projects/dotfiles/src

# Delete existing dot files and folders
sudo rm -rf ~/.vimrc >/dev/null 2>&1
sudo rm -rf ~/.doom.d >/dev/null 2>&1
sudo rm -rf ~/.bashrc >/dev/null 2>&1
sudo rm -rf ~/.zshrc >/dev/null 2>&1
sudo rm -rf ~/.gitconfig >/dev/null 2>&1
sudo rm -rf ~/.config >/dev/null 2>&1

# Create symlinks in the home folder
# Allow overriding with files of matching names in custom-configs/
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/doom.d ~/.doom.d
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/zshrc ~/.zshrc
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/config ~/.config

echo "Install finished!"
