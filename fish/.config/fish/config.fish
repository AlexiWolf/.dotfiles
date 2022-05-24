fish_add_path -aP ~/.local/bin
fish_add_path -aP ~/.local/scripts
fish_add_path -aP ~/.cargo/bin
fish_add_path -aP /opt/android-sdk/cmdline-tools/latest/bin

export ANDROID_SDK_ROOT=/opt/android-sdk/

starship init fish | source
