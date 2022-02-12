# Aliases

alias ..="cd .."

# Exports

## Path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/go/bin:$PATH"
. "$HOME/.cargo/env"

## Terminal
export TERMINAL=alacritty

# Start the Starship terminal
eval "$(starship init bash)"

