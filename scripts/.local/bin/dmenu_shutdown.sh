source debian_shutdown_commands.sh


function prompt_shutdown {
    case "$(printf "cancel\nshutdown\nrestart" | dmenu -p "Shutdown")" in
        [shutdown]* ) $SHUTDOWN_COMMAND;;
        [restart]*  ) $RESTART_COMMAND;;
        *           ) exit;;
    esac
}

prompt_shutdown