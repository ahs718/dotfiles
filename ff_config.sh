#!/bin/bash

# Variables
dotfiles_dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

sudo rm -rf ~/.mozilla/firefox/*.default-release/chrome >/dev/null 2>&1
sudo rm ~/.mozilla/firefox/*.default-release/user.js >/dev/null 2>&1

cp -r $dotfiles_dir/firefox/chrome ~/.mozilla/firefox/*.default-release
cp $dotfiles_dir/firefox/user.js ~/.mozilla/firefox/*.default-release

echo "Firefox custom css and user.js set!"
