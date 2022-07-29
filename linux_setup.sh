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

ln -sf $dotfiles_dir/Typora ~/.config/Typora
# ln -sf $dotfiles_dir/alacritty ~/.config/alacritty
ln -sf $dotfiles_dir/bat ~/.config/bat
ln -sf $dotfiles_dir/btop ~/.config/btop
# ln -sf $dotfiles_dir/doom ~/.doom.d
ln -sf $dotfiles_dir/fish ~/.config/fish
ln -sf $dotfiles_dir/images ~/.images
ln -sf $dotfiles_dir/kitty ~/.config/kitty
# ln -sf $dotfiles_dir/konsole ~/.config/konsole
ln -sf $dotfiles_dir/latte ~/.config/latte
ln -sf $dotfiles_dir/neofetch ~/.config/neofetch
ln -sf $dotfiles_dir/nvim ~/.config/nvim
# ln -sf $dotfiles_dir/picom ~/.config/picom

echo "Install finished!"
