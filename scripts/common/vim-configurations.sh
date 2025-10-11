echo
echo "Installing vim configuration"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo
echo "Add nice fonts"
brew install --cask font-hack-nerd-font 
brew install --cask font-ibm-plex