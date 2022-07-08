fish_add_path -aP ~/.local/bin
fish_add_path -aP ~/.local/scripts
fish_add_path -aP ~/.cargo/bin
fish_add_path -aP ~/.local/share/gem/ruby/3.0.0/bin
fish_add_path -aP /opt/android-sdk/cmdline-tools/latest/bin

export ANDROID_SDK_ROOT=/opt/android-sdk/

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

starship init fish | source
