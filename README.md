# Important links to make sure all dependencies are resolved
### [paru (aur helper):](https://aur.archlinux.org/paru.git)
```console
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
### [dmenu patch:](https://github.com/bakkeby/dmenu-flexipatch.git)
```.h
#define ALPHA_PATCH 1
#define CASEINSENSITIVE_PATCH 1
#define CENTER_PATCH 1
#define LINE_HEIGHT_PATCH 1
```
