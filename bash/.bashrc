# Aliases

alias ..="cd .."

# Exports

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"

export $TERMINAL=alacritty


# Hilarity Ensues
fortune | sarcasm | cowsay

# Start the Starship terminal
eval "$(starship init bash)"
. "$HOME/.cargo/env"

# SDKMan
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

