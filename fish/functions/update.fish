function update -d "Update, autoremove, and clean up homebrew packages"
  brew update &&
  brew upgrade &&
  brew autoremove &&
  brew cleanup &&
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
end
