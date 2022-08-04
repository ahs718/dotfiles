# Exports
export BAT_THEME="Dracula"
export PATH="$HOME/.emacs.d/bin:$PATH"
export EDITOR=nvim

# General Aliases
alias ls='ls --color=auto'
alias lsa="ls -hla --color=auto" # Lists all files including hidden ones in the list format
alias sx='startx' # Starts the window manager
alias cl='clear' # Clears screen
alias v='nvim' # Opens neovim
alias nv='cd ~/.config/nvim'
alias dots='cd ~/Projects/dotfiles'
alias code='codium'
alias proj='cd ~/Projects'
alias mlbtracker='cd ~/projects/MLB-Tracker && source venv/bin/activate && python3 website/main.py'
alias ff="cd ~/Library/Application\ Support/Firefox/Profiles/d469l3ko.default"
alias g211='cd ~/Documents/CS211 && lazygit'

# Case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Homebrew completions

if type brew &>/dev/null
then
	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
	autoload -Uz compinit
	compinit
fi

# Enable starship prompt
eval "$(starship init zsh)"
