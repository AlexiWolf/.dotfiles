function prompt_shutdown {
    while true; do
        case "$(printf "shutdown\nrestart" | dmenu -p "Action")" in
            [shutdown]* ) prompt_confirmation && systemctl poweroff; break;;
            [restart]*  ) prompt_confirmation && systemctl restart; break;;
            *           ) exit;;
        esac
    done
}

function prompt_confirmation {
    while true; do
        case "$(printf "yes\nno" | dmenu -p "Are you sure?")" in
            [yes]* ) return 0;;
            [no]*  ) return 1;;
            *      ) exit;;
        esac
    done
}

prompt_shutdown