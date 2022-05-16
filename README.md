# Important links to make sure all dependencies are resolved
### Pacstrap (base install):
```concole
pacstrap /mnt base base-devel linux linux-firmware linux-headers dosfstools btrfs-progs efibootmgr git vim intel-ucode networkmanager
```

### During chroot (base install):
```console
pacman -S alacritty alsa-utils arandr bitwarden code discord dmenu firefox flameshot github-cli neofetch nvidia nvidia-utils os-prober pasystray pavucontrol picom pipewire pipewire-pulse python-pip python-psutil qtile thunar ttf-cascadia-code vlc xorg-xinit xorg-xprop
```
### [paru (aur helper):](https://github.com/morganamilo/paru)
```console
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
```console
paru -S deadd-notifcation-center-bin spotify
```
### [dmenu patch:](https://github.com/bakkeby/dmenu-flexipatch)
```.h
#define ALPHA_PATCH 1
#define CASEINSENSITIVE_PATCH 1
#define CENTER_PATCH 1
#define LINE_HEIGHT_PATCH 1
```
```console
sudo make install
```
