# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# General Apps
brew install --cask spotify

# Utilities
brew install --cask flycut
brew install --cask wireshark
brew install --cask snagit
brew install --cask rectangle-pro

# Terminals
brew install --cask iterm2

# Browsers
brew install --cask google-chrome
brew install --cask firefox

# Communication
brew install --cask slack
brew install --cask zoom
brew install --cask webex
brew install --cask microsoft-office
brew install --cask signal
brew install --cask whatsapp
brew install --cask discord
brew install --cask proton-mail

# Security
brew install --cask nordvpn

# CLI Tools
brew install mcfly        # better shell history
brew install lsd          # better ls
brew install bat          # better cat
brew install dust         # better du
brew install duf          # better df
brew install broot        # better file ops in directory
brew install fd           # better find
brew install choose       # better cut
brew install glances htop # better top

# mac app store installations
brew install mas
