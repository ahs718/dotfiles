if status is-interactive
  # Commands to run in interactive sessions can go here
  set fish_greeting
  set -gx EDITOR nvim

  # Aliases
  alias v="nvim"

  alias pn="pnpm"
  alias px="pnpx"
  starship init fish | source
end
