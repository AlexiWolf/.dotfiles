export TERMINAL=alacritty

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.intelij/bin:$PATH"

exec dbus-run-session i3 -a  
