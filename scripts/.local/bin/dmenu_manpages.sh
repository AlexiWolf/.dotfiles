man -k . | dmenu -l 30 | awk '{print $1}' | xargs -r alacritty -e man
