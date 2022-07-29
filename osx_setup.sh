#!/bin/zsh

# Variables
dotfiles_dir=$(cd -P -- "$(dirname -- "${ZSH_SOURCE[0]}")" && pwd -P)

# Delete existing dot files and folders
sudo rm -rf ~/.vimrc >/dev/null 2>&1
sudo rm -rf ~/.doom.d >/dev/null 2>&1
sudo rm -rf ~/.bashrc >/dev/null 2>&1
sudo rm -rf ~/.zshrc >/dev/null 2>&1
sudo rm -rf ~/.gitconfig >/dev/null 2>&1
sudo rm -rf ~/.xinitrc >/dev/null 2>&1
sudo rm -rf ~/.images >/dev/null 2>&1

sudo rm -rf ~/.config/ >/dev/null 2>&1

# Create symlinks in the home & .config folder
# Comment out the config files you do not want to symlink
mkdir ~/.config
ln -sf $dotfiles_dir/bash/.bashrc ~/.bashrc
ln -sf $dotfiles_dir/git/.gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/vim/.vimrc ~/.vimrc
ln -sf $dotfiles_dir/zsh/.zshrc ~/.zshrc

ln -sf $dotfiles_dir/bat ~/.config/bat
ln -sf $dotfiles_dir/btop ~/.config/btop
# ln -sf $dotfiles_dir/doom-emacs ~/.doom.d
ln -sf $dotfiles_dir/fish ~/.config/fish
ln -sf $dotfiles_dir/images ~/.images
ln -sf $dotfiles_dir/neofetch ~/.config/neofetch
ln -sf $dotfiles_dir/nvim ~/.config/nvim

echo "Install finished!"
