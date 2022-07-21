## Nvim Config
In order to set up Neovim, first run the following command inside Neovim:
```bash
:PackerSync
```
Next, uncomment the lines in the `init.lua` file in the nvim directory. <br>
Be sure to have ripgrep and npm installed. Manually run the following commands with Neovim open:

```bash
:LspIntall clangd emmet_ls html pyright sumneko_lua
:TSInstall cpp python html lua
```
## [MaterialFox](https://github.com/muckSponge/MaterialFox)
Custom firefox theme, works alongside user.js <br>
Commands to install:
```bash
git clone https://github.com/muckSponge/MaterialFox.git
cd MaterialFox
```
Copy the chrome folder into your specific firefox directory.
```bash
cp -r chrome/ ~/.mozilla/firefox/{PROFILE_NAME}
```
Note: Your profile name will be different

## [Rofi Menu Customization](https://github.com/catppuccin/rofi)
First, clone the repository:
```bash
git clone https://github.com/catppuccin/rofi ./.catppuccin-rofi
cd ./.catppuccin-rofi
```
Next, create the following folders:
```bash
mkdir -p ~/.config/rofi ~/.local/share/rofi/themes
```
Then, copy the files:
```bash
cp -r ./.config/rofi/* ~/.config/rofi
cp -r ./.local/share/rofi/themes/* ~/.local/share/rofi/themes/
```
