## Important links to make sure all dependencies are resolved
### Pacstrap (base install):
```concole
pacstrap /mnt base base-devel linux linux-firmware linux-headers dosfstools btrfs-progs efibootmgr git vim intel-ucode networkmanager dialog
```

### During chroot (base install):
```console
pacman -S alacritty alsa-utils bitwarden code discord dmenu firefox flameshot github-cli neofetch nvidia nvidia-utils os-prober picom pipewire pipewire-alsa pipewire-pulse python-babel python-pip python-psutil qtile thunar ttf-cascadia-code vlc xorg-xinit xorg-xprop xorg-xsetroot
```
### [paru (aur helper):](https://github.com/morganamilo/paru)
```console
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
```console
paru -S spotify nvim-packer-git spicetify-cli
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
### Nvim Config
Be sure to have ripgrep and npm installed. Manually run the following commands with Neovim open:
```console
:LspIntall clangd emmet_ls html pyright sumneko_lua
:TSInstall cpp python html lua
```
### [MaterialFox](https://github.com/muckSponge/MaterialFox)
Custom firefox theme, works alongside user.js

### Additional packages that I use
```console
sudo pacman -S autopep8 bat clang feh htop lazygit neovim noto-fonts-emoji npm openssh prettier qbittorrent reflector steam stylua terminus-font tree unzip vim wget zsh zsh-autosuggestions zsh-syntax-highlighting
```
