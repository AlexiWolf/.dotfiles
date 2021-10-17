# Aliases

alias ..="cd .."

export PATH="$HOME/.local/bin:$PATH"

# Start the Starship terminal
eval "$(starship init bash)"
. "$HOME/.cargo/env"
