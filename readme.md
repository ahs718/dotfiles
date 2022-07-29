

# My Dotfiles

-   These are the dotfiles for different applications that I use on linux and macOS. 
-   In order to get use these configurations, you can use one of the two scripts included in the repository.
-   Both of the scripts symlink the config files in the repository to their respective locations in the filesystem. Therefore, it is advised to *not* delete the repo after running the script.

## Installation

Clone the repository:

```bash
git clone https://github.com/ahs718/dotfiles.git
cd dotfiles
```

Run one of the following scripts:

### Linux

```bash
./linux_setup.sh
```

### MacOS

```bash
./osx_setup.sh
```

## Firefox CSS Theme and user.js

-   In order to use the Firefox custom css theme and user.js file, you can use the script provided in the repository.

    ```bash
    ./ff_theme_userjs.sh
    ```

### Extensions

-   [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
    -   [uBlock settings file](firefox/ublock-settings.txt)
    -   [SponsorBlock settings file](firefox/sponsorblock-settings.json)
-   [Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
-   [LocalCDN](https://addons.mozilla.org/en-US/firefox/addon/localcdn-fork-of-decentraleyes/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
-   [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
-   [Cookie Auto Delete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
-   [SponsorBlock](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)
-   [Return YouTube Dislike](https://addons.mozilla.org/en-US/firefox/addon/return-youtube-dislikes/)
-   [Reddit Enhancement Suite](https://addons.mozilla.org/en-US/firefox/addon/reddit-enhancement-suite/)

## (Arch Linux) AUR Helper

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## Neovim

### Prerequisites

-   Ensure you have the following packages installed

    ```bash
    paru -S nvim-packer-git nodejs npm ripgrep
    ```

-   In order to set up Neovim, ensure you have nvim-packer-git (AUR package) installed.

-   Run the following command inside Neovim

    ```bash
    :PackerSync
    ```

-   Run the following commands with Neovim open:

    ```bash
    :LspIntall clangd emmet_ls html jdtls marksman pyright sumneko_lua
    ```
