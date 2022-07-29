#!/bin/bash

# Variables
dotfiles_dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

# Delete existing dot files and folders
sudo rm -rf ~/.vimrc >/dev/null 2>&1
sudo rm -rf ~/.doom.d >/dev/null 2>&1
sudo rm -rf ~/.bashrc >/dev/null 2>&1
sudo rm -rf ~/.zshrc >/dev/null 2>&1
sudo rm -rf ~/.gitconfig >/dev/null 2>&1
sudo rm -rf ~/.xinitrc >/dev/null 2>&1

sudo rm -rf ~/.config/ >/dev/null 2>&1

# Create symlinks in the home folder
# Allow overriding with files of matching names in custom-configs/
mkdir ~/.config
cp $dotfiles_dir/bash/.bashrc ~/.bashrc
cp $dotfiles_dir/git/.gitconfig ~/.gitconfig
cp $dotfiles_dir/vim/.vimrc ~/.vimrc
cp $dotfiles_dir/zsh/.zshrc ~/.zshrc

cp -r $dotfiles_dir/Typora ~/.config/Typora
cp -r $dotfiles_dir/alacritty ~/.config/alacritty
cp -r $dotfiles_dir/bat ~/.config/bat
cp -r $dotfiles_dir/btop ~/.config/btop
cp -r $dotfiles_dir/doom ~/.doom.d
cp -r $dotfiles_dir/fish ~/.config/fish
cp -r $dotfiles_dir/images ~/.images
cp -r $dotfiles_dir/kitty ~/.config/kitty
cp -r $dotfiles_dir/konsole ~/.config/konsole
cp -r $dotfiles_dir/latte ~/.config/latte
cp -r $dotfiles_dir/neofetch ~/.config/neofetch
cp -r $dotfiles_dir/nvim ~/.config/nvim
cp -r $dotfiles_dir/picom ~/.config/picom

echo "Install finished!"
