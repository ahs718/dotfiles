#!bin/zsh

# Variables
dotfiles_dir=~/dotfiles
log_file=~/install_progress_log.txt

# Delete existing dot files and folders
sudo rm -rf ~/.vimrc >/dev/null 2>&1
sudo rm -rf ~/.doom.d >/dev/null 2>&1
sudo rm -rf ~/.bashrc >/dev/null 2>&1
sudo rm -rf ~/.zshrc >/dev/null 2>&1
sudo rm -rf ~/.gitconfig >/dev/null 2>&1
sudo rm -rf ~/.config >/dev/null 2>&1

# Create symlinks in the home folder
# Allow overriding with files of matching names in custon-configs/
ln -sf $dotfiles_dir/vimrc ~/.vimrc
ln -sf $dotfiles_dir/doom.d ~/.doom.d
ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/zshrc ~/.zshrc
ln -sf $dotfiles_dir/.gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/config ~/.config

if [ -n "$(find $dotfiles_dir/custom-configs -name gitconfig)" ]; then
    ln -s $dotfiles_dir/custom-configs/**/gitconfig ~/.gitconfig
else
    ln -s $dotfiles_dir/gitconfig ~/.gitconfig
fi

if [ -n "$(find $dotfiles_dir/custom-configs -name zshrc)" ]; then
    ln -s $dotfiles_dir/custom-configs/**/zshrc ~/.zshrc
else
    ln -s $dotfiles_dir/zshrc ~/.zshrc
fi

echo -e "\n======== Summary ========\n"
cat $log_file
echo
echo "Install finished!"
rm $log_file
