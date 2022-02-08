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

# SDKMan

## THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source ~/.bash_completion/alacritty
