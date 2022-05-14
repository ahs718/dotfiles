### Git config commands:
```console
git config --global user.name "Aiden Schulman"
git config --global user.email aidenhschulman@gmail.com
git config --global init.defaultBranch main
```
### Packages for fresh arch install
```console
pacstrap base base-devel linux linux-firmware vim btrfs-progs git intel-ucode 
```
```console
sudo pacman -S linux-headers nvidia nvidia-utils pipewire xorg-server xorg-xinit xorg-xprop alacritty arandr firefox github-cli
```
