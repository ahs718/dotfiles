# zsh plugins
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# shell prompt
eval "$(starship init zsh)"

# case insensitive tab complete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# aliases
alias ls="ls --color=auto"
alias col="cd /Users/ahs/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Spring\ 2023"
alias v="nvim "
alias update="brew update && brew upgrade && brew autoremove && brew cleanup && nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'"
