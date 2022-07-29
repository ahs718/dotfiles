#!/bin/bash

# Variables
dotfiles_dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

echo "Installing MaterialFox theme..."
git clone https://github.com/muckSponge/MaterialFox.git ~/MaterialFox
cp -r ~/MaterialFox/chrome ~/.mozilla/firefox/*.default-release
rm -rf ~/MaterialFox
cp $dotfiles_dir/firefox/chrome/global/variables.css ~/.mozilla/firefox/*.default-release/chrome/global/variables.css
cp $dotfiles_dir/firefox/user.js ~/.mozilla/firefox*.default-release
echo "Firefox css theme and user.js file set!"
