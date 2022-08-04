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

sudo rm -rf ~/.config/{bat,btop,fish,neofetch,nvim,starship.toml} >/dev/null 2>&1

# Create symlinks in the home & .config folder
# Comment out the config files you do not want to symlink
mkdir ~/.config
ln -sf $dotfiles_dir/bash/.bashrc ~/.bashrc && echo "added .bashrc"
ln -sf $dotfiles_dir/git/.gitconfig ~/.gitconfig && echo "added .gitconfig"
ln -sf $dotfiles_dir/vim/.vimrc ~/.vimrc && echo "added .vimrc"
ln -sf $dotfiles_dir/zsh/.zshrc ~/.zshrc && echo "added .zshrc"

ln -sf $dotfiles_dir/bat ~/.config/bat && echo "added bat files"
cp -r $dotfiles_dir/btop ~/.config/btop && echo "added btop files"
# ln -sf $dotfiles_dir/doom-emacs ~/.doom.d && echo "added doom-emacs files"
cp -r $dotfiles_dir/fish ~/.config/fish && echo "added fish files"
ln -sf $dotfiles_dir/starship ~/.config/starship && echo "added starship"
ln -sf $dotfiles_dir/images ~/.images && echo "added images"
ln -sf $dotfiles_dir/nvim ~/.config/nvim && echo "added neovim files"
ln -sf $dotfiles_dir/neofetch ~/.config/neofetch && echo "added neofetch files"

echo "Install finished!"
