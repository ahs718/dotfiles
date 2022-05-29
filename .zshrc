# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the git branch name in the prompt
zstyle ':vcs_info:git:*' formats '%F{111}<%b>%f '
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST auto_cd
PROMPT='%F{147}<${PWD/#$HOME/~}> ${vcs_info_msg_0_}%{$reset_color%}'
# PROMPT="%F{147}%~%f ${vcs_info_msg_0_}%"

# History
export HISTFILE="$HOME/.zsh_history" # History file location
export HISTSIZE=10000 # Number of events loaded into memory
export SAVEHIST=10000 # Number of events stored in the zsh history file
setopt HIST_IGNORE_ALL_DUPS # Do not save duplicate commands to history
setopt HIST_FIND_NO_DUPS # Do not find duplicate commands when searching
alias history='bat "${HISTFILE}"' # Show all history
alias chistory='truncate -s 0 "${HISTFILE}"' # Clear history

# Custom paths
export PATH=$PATH:/home/ahs/.spicetify

# Custom bat theme
export BAT_THEME="Dracula"

# Case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Aliases
alias lsa="ls -hla --color=auto" # Lists all files including hidden ones in the list format
alias sx='startx' # Starts the window manager
alias cl='clear' # Clears screen
alias v='nvim' # Opens neovim
alias qt='cd ~/.config/qtile' # Navigates to qtile config directory
alias nv='cd ~/.config/nvim' # Nagivates to neovim config directory

# Enabling installed zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
