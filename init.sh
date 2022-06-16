# Initialize submodules
echo INITIALIZING GIT SUBMODULES
git submodule update --recursive --init

# Install Vim Plug
echo INSTALLING VIM PLUG
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo run ':PlugInstall' to install plugins

# Stow configs
echo STOWING CONFIGS
./stow.sh
