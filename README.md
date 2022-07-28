

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
    :LspIntall clangd emmet_ls html pyright sumneko_lua
    :TSInstall cpp python html lua
    ```

## [MaterialFox](https://github.com/muckSponge/MaterialFox)
-   Custom firefox theme, works alongside user.js

    ```bash
    git clone https://github.com/muckSponge/MaterialFox.git
    cd MaterialFox
    ```

-   Copy the chrome folder into your specific firefox directory.

    ```bash
    cp -r chrome/ ~/.mozilla/firefox/{PROFILE_NAME}
    ```

    -   Note: Your profile name will be different
