#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sx='startx'
PS1='\[\e[0;1;38;5;147m\]\u\[\e[0;1m\]@\[\e[0;1;38;5;147m\]\h \[\e[0;1;38;5;224m\]\w \[\e[0m\]\$ \[\e[0m\]'
