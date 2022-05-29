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
### Nvim Config
n order to set up Neovim, first run the following command inside Neovim:
```console
:PackerSync
```
Next, uncomment the lines in the `init.lua` file. <br>
Be sure to have ripgrep and npm installed. Manually run the following commands with Neovim open:
```console
:LspIntall clangd emmet_ls html pyright sumneko_lua
:TSInstall cpp python html lua
```
### [MaterialFox](https://github.com/muckSponge/MaterialFox)
Custom firefox theme, works alongside user.js

### Additional packages that I use
```console
sudo pacman -S autopep8 bat clang feh htop intellij-idea-community-edition jdk-openjdk lazygit ncdu neovim noto-fonts-emoji npm openssh prettier qbittorrent reflector steam stylua terminus-font tree unzip vim wget zsh zsh-autosuggestions zsh-syntax-highlighting
```

### [Rofi Menu Customization](https://github.com/catppuccin/rofi)
