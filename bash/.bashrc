# Aliases

alias ..="cd .."

# Exports

## Path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

## Terminal
export TERMINAL=alacritty

# Start the Starship terminal
eval "$(starship init bash)"

