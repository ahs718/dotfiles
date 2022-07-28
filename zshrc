# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the git branch name in the prompt
zstyle ':vcs_info:git:*' formats '%F{111}[%b]%f '

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST auto_cd
PROMPT='%F{147}[${PWD/#$HOME/~}] ${vcs_info_msg_0_}%{$reset_color%}'

# History
export HISTFILE="$HOME/.zsh_history" # History file location
export HISTSIZE=10000 # Number of events loaded into memory
export SAVEHIST=10000 # Number of events stored in the zsh history file
setopt HIST_IGNORE_ALL_DUPS # Do not save duplicate commands to history
setopt HIST_FIND_NO_DUPS # Do not find duplicate commands when searching
alias history='bat "${HISTFILE}"' # Show all history
alias chistory='truncate -s 0 "${HISTFILE}"' # Clear history

export BAT_THEME="Dracula"
export PATH="$HOME/.emacs.d/bin:$PATH"

# Case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

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

# Homebrew completions
if type brew &>/dev/null
then
	FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
	autoload -Uz compinit
	compinit
fi

# Navigation Aliases
alias g211='cd ~/Documents/CS211 && lazygit'
export EDITOR=nvim

# Start fish shell
# if [ -z "$STARTEDFISH" ];
# then
#     export STARTEDFISH=1;
#     exec fish;
#     exit;
# fi
