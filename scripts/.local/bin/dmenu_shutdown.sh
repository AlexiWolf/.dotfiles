SHUTDOWN_COMMAND="systemctl poweroff"
RESTART_COMMAND="systemctl restart"


function prompt_shutdown {
    case "$(printf "cancel\nshutdown\nrestart" | dmenu -p "Action")" in
        [shutdown]* ) $SHUTDOWN_COMMAND;;
        [restart]*  ) $RESTART_COMMAND;;
        *           ) exit;;
    esac
}

prompt_shutdown