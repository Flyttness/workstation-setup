echo

echo "Installing Oh My Zsh (and don't exit if it's already installed)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh-autosuggestions"
brew install zsh-autosuggestions