echo

echo "Installing Oh My Zsh (and don't exit if it's already installed)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh-autosuggestions"
brew install zsh-autosuggestions

cp "$WORK_DIR"/files/dircolors.ansi-dark "$HOME"/.dircolors

cp "${WORK_DIR}"/files/flyttness.zsh-theme ~/.oh-my-zsh/themes/
sed -i '' -e "s/ZSH_THEME=\".*$/ZSH_THEME=\"flyttness\"/g" ~/.zshrc