SHUTDOWN_COMMAND="systemctl poweroff"
RESTART_COMMAND="systemctl reboot"


function prompt_shutdown {
    case "$(printf "cancel\nlock\nshutdown\nrestart" | dmenu -p "Shutdown")" in
        [lock]*     ) slock;;
        [shutdown]* ) $SHUTDOWN_COMMAND;;
        [restart]*  ) $RESTART_COMMAND;;
        *           ) exit;;
    esac
}

prompt_shutdown
