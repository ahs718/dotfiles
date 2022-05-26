PROMPT="%F{147}%~%f " # Custom ZSH prompt

alias lsa='ls -al --color=auto' # Lists all files including hidden ones in the list format
alias sx='startx' # Starts the window manager
alias cl='clear' # Clears screen
alias v='nvim' # Opens neovim
alias qt='cd ~/.config/qtile' # Navigates to qtile config directory
alias nv='cd ~/.config/nvim' # Nagivates to neovim config directory

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/home/ahs/.spicetify
