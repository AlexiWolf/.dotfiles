man -k . | dmenu -l 10 | awk '{print $1}' | xargs -r alacritty -e man
